package com.questionbank.webservice.domain.question;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import com.questionbank.webservice.domain.BaseTimeEntity;

import lombok.AccessLevel;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@NoArgsConstructor(access = AccessLevel.PROTECTED)
@Getter
@Entity
public class Example extends BaseTimeEntity {
    @Id
    @GeneratedValue
    private Long    exmpId;

    @Column(nullable = false)
    private Long    questId;

    @Column(nullable = false)
    private int     exmpNbr;

    @Column(nullable = false)
    private String  exampleText;

    @Column(nullable = false)
    private boolean answer;

    @Builder
    public Example(Long questId, int exmpNbr, String exampleText, boolean answer) {
        this.questId = questId;
        this.exmpNbr = exmpNbr;
        this.exampleText = exampleText;
        this.answer = answer;
    }
}