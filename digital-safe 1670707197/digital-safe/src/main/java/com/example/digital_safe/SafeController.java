package com.example.digital_safe;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class SafeController {

    private final DigitalSafe safe = new DigitalSafe("Test 318");

    @GetMapping("/safe/owner")
    public String getOwnerName() {
        return "Owner: " + safe.getOwnerName();
    }

    @GetMapping("/safe/balance")
    public String getBalance() {
        double balance = safe.getBalance();
        if (balance % 1 == 0) {
            return "Balance: " + (long) balance;
        } else {
            return "Balance: " + balance;
        }
    }
}
