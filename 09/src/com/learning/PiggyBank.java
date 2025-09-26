package com.learning;

/**
 * Class นี้จำลองการทำงานของกระปุกออมสินดิจิทัล
 * สามารถเก็บชื่อเจ้าของและจำนวนเงินได้
 */
public class PiggyBank {
    // Fields: ชื่อเจ้าของ และจำนวนเงินในกระปุก
    String ownerName;
    double money;

    // Constructor: รับชื่อเจ้าของและตั้งค่าเงินเริ่มต้นเป็น 0
    public PiggyBank(String ownerName) {
        this.ownerName = ownerName;
        this.money = 0.0; // กระปุกใหม่ยังไม่มีเงิน
    }

    // Method: สำหรับหยอดเงินเพิ่ม
    public void addMoney(double amount) {
        this.money += amount;
        System.out.printf("หยอดเงินใส่กระปุกของ %s จำนวน %.2f บาท%n", this.ownerName, amount);
    }

    // Method: สำหรับแสดงยอดเงินคงเหลือ
    public void showMoney() {
        System.out.printf("กระปุกของ %s มีเงินทั้งหมด %.2f บาท%n", this.ownerName, this.money);
    }
}