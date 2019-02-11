package com.questionbank.webservice.dto.question;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import com.questionbank.webservice.domain.question.Example;
import com.questionbank.webservice.domain.question.Question;

import lombok.Getter;

@Getter
public class QuestionMainResponseDto {
    private Long                         questId;
    private String                       testDscd;
    private Long                         quizId;
    private int                          questNbr;
    private String                       questText;
    private String                       explanation;
    private String                       reference;
    private List<ExampleMainResponseDto> examples;
    private String                       modifiedDate;

    public QuestionMainResponseDto(Question quest, Stream<Example> exmps) {
        this.questId = quest.getQuestId();
        this.testDscd = quest.getTestDscd();
        this.quizId = quest.getQuizId();
        this.questNbr = quest.getQuestNbr();
        this.questText = quest.getQuestText();
        this.explanation = quest.getExplanation();
        this.reference = quest.getReference();
        this.examples = exmps.map(ExampleMainResponseDto::new).collect(Collectors.toList());
        this.modifiedDate = _toStringDateTime(quest.getModifiedDate());
    }

    /**
     * Java 8 버전
     */
    private String _toStringDateTime(LocalDateTime localDateTime) {
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
        return Optional.ofNullable(localDateTime).map(formatter::format).orElse("");
    }

    @Override
    public String toString() {
        return "QuestionMainResponseDto [questId=" + questId + ", testDscd=" + testDscd + ", quizId=" + quizId
                + ", questNbr=" + questNbr + ", questText=" + questText + ", explanation=" + explanation
                + ", reference=" + reference + ", examples=" + examples + ", modifiedDate=" + modifiedDate + "]";
    }
}