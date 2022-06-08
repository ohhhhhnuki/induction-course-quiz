package com.example.demo.domain.issue;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
@RequiredArgsConstructor
public class IssueService {

    private final IssueRepository issueRepository;

    public List<IssueEntity> findAll() {
        return issueRepository.findAll();
    }
    public List<String> findCategory() {
        return issueRepository.findCategory();
    }
    public List<IssueEntity> findQuizList(int totalNum, String category) { return issueRepository.findQuizList(totalNum, category);}


    public List<ScoreEntity> getRanking(String category) {
        return issueRepository.getRanking(category);
    }

    public void scoreRegister(String name, int score, String category) {
        issueRepository.insert(name, score, category);
    }

//    @Transactional
//    public void create(String question, String description, String answer1, String answer2, String answer3, String answer4, String answer, String category){
//        issueRepository.insert(question, description, answer1, answer2, answer3, answer4, Integer.parseInt(answer), category);
//    }

//    public IssueEntity findById(long issueId) {
//        return issueRepository.findById(issueId);
//    }

//    @Transactional
//    public void update(long issueId, @NotBlank @Size(max = 256) String question,@NotBlank @Size(max = 256) String description, @NotBlank @Size(max = 256) String answer1, @NotBlank @Size(max = 256) String answer2, @NotBlank @Size(max = 256) String answer3, @NotBlank @Size(max = 256) String answer4, @NotBlank String answer, @NotBlank @Size(max = 256) String category) {
//        issueRepository.update(issueId, question, description,  answer1, answer2, answer3, answer4, Integer.parseInt(answer), category);
//    }
}
