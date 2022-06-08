package com.example.demo.domain.issue;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import java.util.List;

@Mapper
public interface IssueRepository {

    @Select("select * from issues")
    List<IssueEntity> findAll();

    @Select("select distinct category from issues")
    List<String> findCategory();

    @Select("select *, RAND() from issues where category = #{category} order by RAND() limit #{totalNum} ")
    List<IssueEntity> findQuizList(int totalNum, String category);

    @Select("select * from scores where category = #{category} order by score DESC")
    List<ScoreEntity> getRanking(String category);

    @Insert("insert into scores (name, score, category) values (#{name}, #{score}, #{category})")
    void insert(String name, int score, String category);

//    @Update("update issues set question = #{question}, description = #{description},  answer1 = #{answer1}, answer2 = #{answer2}, answer3 = #{answer3}, answer4 = #{answer4}, answer = #{answer}, category = #{category} where id = #{issueId}")
//    void update(long issueId, @NotBlank @Size(max = 256) String question, @NotBlank @Size(max = 256) String description, @NotBlank @Size(max = 256) String answer1, @NotBlank @Size(max = 256) String answer2, @NotBlank @Size(max = 256) String answer3, @NotBlank @Size(max = 256) String answer4, int answer, @NotBlank @Size(max = 256) String category);
//
//    @Insert("insert into issues (question, description, answer1, answer2, answer3, answer4, answer, category) values (#{question}, #{description}, #{answer1}, #{answer2}, #{answer3}, #{answer4}, #{answer}, #{category})")
//    void insert(String question, String description, String answer1, String answer2, String answer3, String answer4, int answer, String category);
//
//    @Select("select * from issues where id = #{issueId}")
//    IssueEntity findById(long issueId);
}
