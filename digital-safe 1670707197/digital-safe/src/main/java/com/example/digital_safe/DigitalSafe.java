package com.example.digital_safe;

public class DigitalSafe {

    private String ownerName;
    private double balance;

    public DigitalSafe(String ownerName) {
        this.ownerName = ownerName;
        this.balance = 0.0;
    }

    public void deposit(double amount) {
        if (amount > 0) {
            this.balance += amount;
        }
    }

    public double getBalance() {
        return balance;
    }

    public String getOwnerName() {
        return ownerName;
    }
}
