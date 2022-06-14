package com.example.demo.domain.issue;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.beans.ConstructorProperties;
import java.util.ArrayList;
import java.util.List;

@AllArgsConstructor
@Data
public class PlayerEntity {

    private int nowQuizNum = 1; // 現在解いている問題番号
    private int totalNum = 10;   // 解く分野の合計問題数
    private String nowCategory; // 現在解いているカテゴリー
    private int[] answerNum = new int[totalNum];
    private int correctNum = 0; // 正解数
    private int percentage = 0;
    private List<IssueEntity> quizList = new ArrayList<>(); // 出題される問題リスト

    // コンストラクタ
    public PlayerEntity(String category) {
        this.nowCategory = category;
        this.nowQuizNum = 1;
        this.correctNum = 0;
    }

    // 次のクイズへ移動する際に呼び出すメソッド
    public void nextQuiz(int answer) {
        this.answerNum[this.nowQuizNum-1] = answer;
        this.nowQuizNum ++;
    }

    // 正答数判定
    public void showResult(){
        this.correctNum = 0;
        for (int i=0; i<totalNum; i++){
            if (this.answerNum[i] == this.getQuizList().get(i).getAnswer()){
                this.correctNum ++;
            }
        }
        this.percentage = this.correctNum * 100 / this.totalNum;
    }
}
