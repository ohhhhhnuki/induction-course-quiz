package com.example.demo.web.issue;

import com.example.demo.domain.issue.IssueService;
import com.example.demo.domain.issue.PlayerEntity;
import com.example.demo.domain.issue.RecordForm;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/issues")
@RequiredArgsConstructor //finalかつ初期化されていないものを初期化するコンストラクタを作成
public class IssueController {

    private final IssueService issueService;

    // index → list
    @GetMapping
    public String showList(Model model) {
        model.addAttribute("issueCategory", issueService.findCategory());
        return "issues/list";
    }

    // list → start
    @GetMapping("/start/{category}")
    public String showStart(@PathVariable("category") String category, Model model) {
        model.addAttribute("nowCategory", category);
        return "issues/start";
    }

    PlayerEntity nowPlayer = null;

    // start -> playing
    @GetMapping("/playing/start/{category}")
    public String showQuiz(@PathVariable("category") String category, Model model) {
        nowPlayer = new PlayerEntity(category);
        nowPlayer.setQuizList(issueService.findQuizList(nowPlayer.getTotalNum(), nowPlayer.getNowCategory()));
        model.addAttribute("nowPlayer", nowPlayer);
        return "issues/playing";
    }

    // playing -> (redirect:playing or result)
    @PostMapping("/playing")
    public String showNextQuiz(@RequestParam String answer, Model model) {
        nowPlayer.nextQuiz(Integer.parseInt(answer));
        if (nowPlayer.getNowQuizNum() > nowPlayer.getTotalNum()) {
            nowPlayer.showResult();
            model.addAttribute("nowPlayer", nowPlayer);
            return "issues/result";
        }
        return "redirect:/issues/playing";
    }

    // -> result
    @GetMapping("/result")
    public String showResult(Model model){
        model.addAttribute("nowPlayer", nowPlayer);
        return "issues/result";
    }


    // redirect:playing -> playing
    @GetMapping("/playing")
    public String showQuiz(Model model){
        model.addAttribute("nowPlayer", nowPlayer);
        return "issues/playing";
    }

    // result -> ranking
    @GetMapping("/ranking")
    public String showRanking(Model model) {
        model.addAttribute("scoreList", issueService.getRanking(nowPlayer.getNowCategory()));
        return "issues/ranking";
    }

    // result -> recordForm
    @GetMapping("/ranking/form")
    public String showRanking(@Validated @ModelAttribute RecordForm recordForm, BindingResult result, Model model) {
        model.addAttribute("recordForm", recordForm);
        return "issues/recordForm";
    }

    // recordForm -> redirect:ranking
    @PostMapping("/ranking")
    public String registerRanking(@Validated RecordForm recordForm, BindingResult result, Model model) {
//        if (result.hasErrors()) {
//            return showRecordForm(recordForm, result, model);
//        }
        issueService.scoreRegister(recordForm.getName(), nowPlayer.getCorrectNum(), nowPlayer.getNowCategory());
        model.addAttribute("scoreList", issueService.getRanking(nowPlayer.getNowCategory()));
        return "redirect:/issues/ranking";
    }

}
