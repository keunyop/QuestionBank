package com.questionbank.webservice.util;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import com.questionbank.webservice.domain.question.Example;
import com.questionbank.webservice.domain.question.ExampleRepository;
import com.questionbank.webservice.domain.question.Question;
import com.questionbank.webservice.domain.question.QuestionRepository;
import com.questionbank.webservice.domain.question.Test;
import com.questionbank.webservice.domain.question.TestRepository;
import com.questionbank.webservice.domain.question.Version;
import com.questionbank.webservice.domain.question.VersionRepository;

import lombok.AllArgsConstructor;

@AllArgsConstructor
@Service
public class TestGenerator {
    private TestRepository     testRepository;
    private VersionRepository  versionRepository;
    private QuestionRepository questionRepository;
    private ExampleRepository  exampleRepository;

    final static String        FILE_PATH = "D:\\99.KYLEE\\01.개인프로젝트\\36.QuestionBank\\dumps\\문제\\todo";

    public void addTestBatch() {

        try (Stream<Path> paths = Files.walk(Paths.get(FILE_PATH))) {
            for (String fileName : paths.filter(Files::isRegularFile).map(file -> file.toString())
                    .collect(Collectors.toList())) {

                Long testId = _addTest(fileName);
                int verNbr = _addVersion(testId, fileName);
                _addQuestion(testId, verNbr, _toObject(fileName));
            }

            System.err.println("### 끝 ###");
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    private Long _addTest(String fileName) {
        String testNm = fileName.substring(fileName.lastIndexOf('\\') + 1, fileName.indexOf('@'));
        String url = fileName.substring(fileName.indexOf('@') + 1, fileName.lastIndexOf('@'));

        testRepository.save(Test.builder().testNm(testNm).url(url).build());

        return testRepository.findFirstByOrderByTestIdDesc().getTestId();
    }

    private int _addVersion(Long testId, String fileName) {
        Version version = versionRepository.findFirstByTestIdOrderByVerNbr(testId);
        int verNbr = version == null ? 1 : version.getVerNbr() + 1;

        String verNm = fileName.substring(fileName.lastIndexOf('@') + 1, fileName.lastIndexOf('.')) + " 기출문제";

        versionRepository.save(Version.builder().testId(testId).verNbr(verNbr).verNm(verNm).build());

        return verNbr;
    }

    private void _addQuestion(Long testId, int verNbr, List<Question4Gen> qs) {
        for (Question4Gen q : qs) {

            // 문제나 보기가 비어있으면 skip
            //            if (StringUtils.isEmpty(q.getQuestTxt()) || !q.getExample4Gens().stream()
            //                    .filter(e -> StringUtils.isEmpty(e.getExampleStr())).findAny().isPresent()) {
            //                                continue;
            //            }

            int questNbr = Integer.parseInt(q.getQuestNbr());

            questionRepository.save(Question.builder().testId(testId).verNbr(verNbr).questNbr(questNbr)
                    .questTxt(q.getQuestTxt()).multiAnswerYn("N").build());

            System.out.println("TEST: " + testId + ", Q-Nbr: " + questNbr);

            for (Example4Gen e : q.getExample4Gens()) {
                exampleRepository.save(Example.builder().testId(testId).verNbr(verNbr).questNbr(questNbr)
                        .exmpNbr(Integer.parseInt(e.getExmpNbr())).exmpTxt(e.getExampleStr()).answerYn(e.getAnswerYn())
                        .build());
            }
        }
    }

    private static List<Question4Gen> _toObject(String fileName) {

        List<Question4Gen> qs = new ArrayList<>();

        for (String line : _readFile(fileName).collect(Collectors.toList())) {
            if (line.equals("    ")) {
                continue;
            }

            Question4Gen lastQ = null;
            List<Example4Gen> lastEs = null;

            if (!CollectionUtils.isEmpty(qs)) {
                lastQ = qs.get(qs.size() - 1);
                lastEs = lastQ.getExample4Gens() == null ? new ArrayList<>() : lastQ.getExample4Gens();
            }

            if (line.matches("^[0-9.].*")) {
                String questNbr = line.substring(0, line.indexOf("."));
                String questTxt = line.substring(line.indexOf(".") + 1);

                Question4Gen q = Question4Gen.builder().questNbr(questNbr).questTxt(questTxt).build();

                qs.add(q);

            } else if (line.contains("①")) {
                if (line.contains("②")) {
                    Example4Gen e1 = Example4Gen.builder().exmpNbr("1")
                            .exampleStr(line.substring(line.indexOf("①") + 1, line.indexOf("②"))).answerYn("N").build();

                    Example4Gen e2 = Example4Gen.builder().exmpNbr("2")
                            .exampleStr(line.substring(line.indexOf("②") + 1)).answerYn("N").build();

                    lastEs.add(e1);
                    lastEs.add(e2);
                } else if (line.contains("❷")) {
                    Example4Gen e1 = Example4Gen.builder().exmpNbr("1")
                            .exampleStr(line.substring(line.indexOf("①") + 1, line.indexOf("❷"))).answerYn("N").build();

                    Example4Gen e2 = Example4Gen.builder().exmpNbr("2")
                            .exampleStr(line.substring(line.indexOf("❷") + 1)).answerYn("Y").build();

                    lastEs.add(e1);
                    lastEs.add(e2);
                } else {
                    Example4Gen e1 = Example4Gen.builder().exmpNbr("1")
                            .exampleStr(line.substring(line.indexOf("①") + 1)).answerYn("N").build();

                    lastEs.add(e1);
                }

            } else if (line.contains("❶")) {
                if (line.contains("②")) {
                    Example4Gen e1 = Example4Gen.builder().exmpNbr("1")
                            .exampleStr(line.substring(line.indexOf("❶") + 1, line.indexOf("②"))).answerYn("Y").build();

                    Example4Gen e2 = Example4Gen.builder().exmpNbr("2")
                            .exampleStr(line.substring(line.indexOf("②") + 1)).answerYn("N").build();

                    lastEs.add(e1);
                    lastEs.add(e2);
                } else {
                    Example4Gen e1 = Example4Gen.builder().exmpNbr("1")
                            .exampleStr(line.substring(line.indexOf("❶") + 1)).answerYn("Y").build();

                    lastEs.add(e1);
                }

            } else if (line.contains("②")) {
                Example4Gen e2 = Example4Gen.builder().exmpNbr("2").exampleStr(line.substring(line.indexOf("②") + 1))
                        .answerYn("N").build();

                lastEs.add(e2);

            } else if (line.contains("❷")) {
                Example4Gen e2 = Example4Gen.builder().exmpNbr("2").exampleStr(line.substring(line.indexOf("❷") + 1))
                        .answerYn("Y").build();

                lastEs.add(e2);

            } else if (line.contains("③")) {

                if (line.contains("④")) {
                    Example4Gen e3 = Example4Gen.builder().exmpNbr("3")
                            .exampleStr(line.substring(line.indexOf("③") + 1, line.indexOf("④"))).answerYn("N").build();

                    Example4Gen e4 = Example4Gen.builder().exmpNbr("4")
                            .exampleStr(line.substring(line.indexOf("④") + 1)).answerYn("N").build();

                    lastEs.add(e3);
                    lastEs.add(e4);

                } else if (line.contains("❹")) {
                    Example4Gen e3 = Example4Gen.builder().exmpNbr("3")
                            .exampleStr(line.substring(line.indexOf("③") + 1, line.indexOf("❹"))).answerYn("N").build();

                    Example4Gen e4 = Example4Gen.builder().exmpNbr("4")
                            .exampleStr(line.substring(line.indexOf("❹") + 1)).answerYn("Y").build();

                    lastEs.add(e3);
                    lastEs.add(e4);

                } else {
                    Example4Gen e3 = Example4Gen.builder().exmpNbr("3")
                            .exampleStr(line.substring(line.indexOf("③") + 1)).answerYn("N").build();

                    lastEs.add(e3);
                }

            } else if (line.contains("❸")) {
                if (line.contains("④")) {
                    Example4Gen e3 = Example4Gen.builder().exmpNbr("3")
                            .exampleStr(line.substring(line.indexOf("❸") + 1, line.indexOf("④"))).answerYn("Y").build();

                    Example4Gen e4 = Example4Gen.builder().exmpNbr("4")
                            .exampleStr(line.substring(line.indexOf("④") + 1)).answerYn("N").build();

                    lastEs.add(e3);
                    lastEs.add(e4);
                } else {
                    Example4Gen e3 = Example4Gen.builder().exmpNbr("3")
                            .exampleStr(line.substring(line.indexOf("❸") + 1)).answerYn("Y").build();

                    lastEs.add(e3);
                }

            } else if (line.contains("④")) {
                Example4Gen e4 = Example4Gen.builder().exmpNbr("4").exampleStr(line.substring(line.indexOf("④") + 1))
                        .answerYn("N").build();

                lastEs.add(e4);

            } else if (line.contains("❹")) {
                Example4Gen e4 = Example4Gen.builder().exmpNbr("4").exampleStr(line.substring(line.indexOf("❹") + 1))
                        .answerYn("Y").build();

                lastEs.add(e4);

            } else {
                Question4Gen qe = qs.get(qs.size() - 1);
                qe.setQuestTxt(qe.getQuestTxt() + "<br><br>" + line);
            }

            if (lastQ != null) {
                lastQ.setExample4Gens(lastEs);
            }

        }

        return qs;
    }

    private static Stream<String> _readFile(String fileName) {
        Stream<String> stream = null;

        try {
            stream = Files.lines(Paths.get(fileName));
        } catch (IOException e) {
            e.printStackTrace();
        }

        return stream;
    }
}