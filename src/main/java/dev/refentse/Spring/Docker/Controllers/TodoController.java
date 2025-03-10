package dev.refentse.Spring.Docker.Controllers;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping("/api")
public class TodoController {

    @GetMapping("/hello")
    public ResponseEntity<?> getString(){
        return new ResponseEntity<>("Hello World", HttpStatus.OK);
    }
}
