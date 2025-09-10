package com.memories.controller;

import com.memories.model.Comment;
import com.memories.repository.CommentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class MemoryController {

    @Autowired
    private CommentRepository commentRepository;

    @GetMapping("/")
    public String showPage(Model model) {
        model.addAttribute("names", new String[]{"عائشة", "سارة", "إيناس", "سمية", "مارية", "نرجس", "زهيرة", "راوية", "ملاك", "رحمة"});
        model.addAttribute("comment", new Comment());
        model.addAttribute("comments", commentRepository.findAll());
        return "memories";
    }

    @PostMapping("/comment")
    public String postComment(@ModelAttribute Comment comment) {
        commentRepository.save(comment);
        return "redirect:/";
    }
}
