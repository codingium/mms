package com.codingium.server.controller;

import com.codingium.server.model.dto.ResponseDto;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/test")
public class TestController {

  @GetMapping("/hello")
  public ResponseEntity hello() {
    return ResponseEntity.ok(new ResponseDto("Hello"));
  }

}
