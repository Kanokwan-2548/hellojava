package com.learning;

public class Main {
    public static void main(String[] args) {
        // 1. สร้างกระปุกใบแรกของ "น้องพอใจ"
        System.out.println("--- สร้างกระปุกออมสินใบใหม่ ---");
        PiggyBank porjaiPiggyBank = new PiggyBank("น้องพอใจ");

        // 2. ดูเงินครั้งแรก (ควรจะเป็น 0)
        porjaiPiggyBank.showMoney();

        System.out.println("\n--- เริ่มหยอดเงิน ---");
        // 3. หยอดเงิน 2-3 ครั้ง
        porjaiPiggyBank.addMoney(20.0);
        porjaiPiggyBank.addMoney(50.0);
        porjaiPiggyBank.addMoney(15.50);

        System.out.println("\n--- ดูยอดเงินล่าสุด ---");
        // 4. ดูเงินอีกครั้งหลังหยอดเงิน
        porjaiPiggyBank.showMoney();
    }
}