package com.codingium.server.controller;

import com.codingium.server.model.dto.ResponseDto;
import io.swagger.v3.oas.annotations.Operation;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/test")
public class TestController {

  @GetMapping("/hello")
  @Operation(
      tags = {"Tests"}
  )
  public ResponseEntity hello() {
    return ResponseEntity.ok(new ResponseDto("Hello"));
  }

}
