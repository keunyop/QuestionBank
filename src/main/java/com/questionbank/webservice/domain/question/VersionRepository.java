package com.questionbank.webservice.domain.question;

import java.util.stream.Stream;

import org.springframework.data.jpa.repository.JpaRepository;

public interface VersionRepository extends JpaRepository<Version, Long> {
    Stream<Version> getVersionsByTestIdOrderByVerNmDesc(Long testId);

    Version getVersionByTestIdAndVerNbr(Long testId, int verNbr);

    Version findFirstByTestIdOrderByVerNbrDesc(Long testId);

    boolean existsByTestIdAndVerNm(Long testId, String verNm);
}
