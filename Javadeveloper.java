import java.util.Scanner;

public class Javadeveloper {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        // รับข้อมูลจากผู้ใช้
        System.out.println("=== โปรแกรมคำนวณเงินกู้ ===");
        
        System.out.print("กรุณาใส่ยอดเงินกู้ (บาท): ");
        double principal = scanner.nextDouble();
        
        System.out.print("กรุณาใส่อัตราดอกเบี้ยต่อปี (%): ");
        double annualRate = scanner.nextDouble();
        
        System.out.print("กรุณาใส่ระยะเวลาเงินกู้ (ปี): ");
        int years = scanner.nextInt();
        
        // คำนวณอัตราดอกเบี้ยต่อเดือน
        double monthlyRate = annualRate / 100 / 12;
        
        // คำนวณจำนวนงวดทั้งหมด (เดือน)
        int totalMonths = years * 12;
        
        // คำนวณเงินงวดต่อเดือนโดยใช้สูตร
        // M = P * [i(1+i)^n] / [(1+i)^n - 1]
        double monthlyPayment = principal * (monthlyRate * Math.pow(1 + monthlyRate, totalMonths)) 
                               / (Math.pow(1 + monthlyRate, totalMonths) - 1);
        
        // แสดงผลลัพธ์
        System.out.printf("\n=== ผลการคำนวณ ===\n");
        System.out.printf("ยอดเงินกู้: %.2f บาท\n", principal);
        System.out.printf("อัตราดอกเบี้ยต่อปี: %.2f%%\n", annualRate);
        System.out.printf("ระยะเวลา: %d ปี\n", years);
        System.out.printf("เงินงวดต่อเดือน: %.2f บาท\n", monthlyPayment);
        
        scanner.close();
    }
}
