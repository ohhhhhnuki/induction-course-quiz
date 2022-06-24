package com.example.demo.web.issue;

import com.example.demo.domain.issue.InquiryForm;
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

    // (login or index or header) → inquiry
    @GetMapping("/inquiryForm")
    public String showInquiryForm(Model model) {
        return "issues/inquiryForm";
    }

    // index -> list
    @GetMapping("/list")
    public String showList(Model model) {
        model.addAttribute("issueCategory", issueService.findCategory());
        return "issues/list";
    }

    // list -> start
    @GetMapping("/start/{category}")
    public String showStart(@PathVariable("category") String category, Model model) {
        model.addAttribute("nowCategory", category);
        return "issues/start";
    }
    public int i = 0;
    PlayerEntity nowPlayer = null;

    // start -> playing
    @GetMapping("/playing/start/{category}")
    public String showQuiz(@PathVariable("category") String category, Model model) {
        nowPlayer = new PlayerEntity(category);
        nowPlayer.setQuizList(issueService.findQuizList(nowPlayer.getTotalNum(), nowPlayer.getNowCategory()));
        model.addAttribute("nowPlayer", nowPlayer);
        i ++;
        return "redirect:/issues/playing";
    }

    // playing -> (redirect:playing or result)
    @PostMapping("/playing")
    public String showNextQuiz(@RequestParam(required = false) String answer, Model model) {
//        if (answer == null) {
//            return "redirect:/issues/playing";
//        }
        nowPlayer.nextQuiz(Integer.parseInt(answer));
        if (nowPlayer.getNowQuizNum()   > nowPlayer.getTotalNum()) {
            nowPlayer.showResult();
            nowPlayer.setRegister(false);
            model.addAttribute("nowPlayer", nowPlayer);
            return "redirect:/issues/result";
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
    public String showRanking(@Validated @ModelAttribute RecordForm recordForm, Model model) {
        model.addAttribute("nowPlayer", nowPlayer);
        model.addAttribute("scoreList", issueService.getRanking(nowPlayer.getNowCategory()));
        model.addAttribute("recordForm", recordForm);
        return "issues/ranking";
    }

    // result -> recordForm
    @GetMapping("/ranking/form")
    public String showRecordForm(@Validated @ModelAttribute RecordForm recordForm, BindingResult result, Model model) {
        model.addAttribute("recordForm", recordForm);
        return "issues/recordForm";
    }

    // recordForm -> (register ranking) -> redirect:ranking
    @PostMapping("/ranking")
    public String registerRanking(@Validated RecordForm recordForm, BindingResult result, Model model) {
//        if (result.hasErrors()) {
//            return showRecordForm(recordForm, result, model);
//        }
        issueService.scoreRegister(recordForm.getName(), nowPlayer.getPercentage(), nowPlayer.getNowCategory());
        model.addAttribute("scoreList", issueService.getRanking(nowPlayer.getNowCategory()));
        nowPlayer.setRegister(true);
        return "redirect:/issues/ranking";
    }

    // index -> (register require) -> redirect:index
    @PostMapping("/inquiryForm")
    public String registerInquiry(@Validated InquiryForm inquiryForm, BindingResult result, Model model) {
        issueService.inquiryRegister(inquiryForm.getTitle(), inquiryForm.getSummary());
        return "redirect:/index";
    }

}
