package com.codewisebot;

import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/code-review")
public class CodeReviewController {

    @PostMapping("/analyze")
    public String analyzeCode(@RequestBody String code) {
        // TODO: Integrate OpenAI API for code review
        return "Received code for analysis:\n" + code;
    }
}

