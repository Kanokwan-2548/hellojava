import java.util.ArrayList;
import java.util.Scanner;

public class todolist {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        ArrayList<String> todoList = new ArrayList<>();
        
        System.out.println("=== โปรแกรม To-Do List ===");
        System.out.println("คำสั่งที่ใช้ได้:");
        System.out.println("- add  : เพิ่มงานใหม่");
        System.out.println("- list : ดูรายการงานทั้งหมด");
        System.out.println("- remove <หมายเลข> : ลบงานตามหมายเลข");
        System.out.println("- exit : ออกจากโปรแกรม");
        System.out.println("================================");
        
        while (true) {
            System.out.print("\nคำสั่ง: ");
            String input = scanner.nextLine().trim();
            
            if (input.equals("exit")) {
                System.out.println("ขอบคุณที่ใช้โปรแกรม To-Do List!");
                break;
            }
            else if (input.equals("list")) {
                if (todoList.isEmpty()) {
                    System.out.println("ไม่มีงานในรายการ");
                } else {
                    System.out.println("รายการงาน:");
                    for (int i = 0; i < todoList.size(); i++) {
                        System.out.println((i + 1) + ". " + todoList.get(i));
                    }
                }
            }
            else if (input.startsWith("add ")) {
                String task = input.substring(4).trim();
                if (!task.isEmpty()) {
                    todoList.add(task);
                    System.out.println("เพิ่มงาน '" + task + "' เรียบร้อยแล้ว");
                } else {
                    System.out.println("กรุณาใส่ชื่องาน");
                }
            }
            else if (input.startsWith("remove ")) {
                try {
                    String numberStr = input.substring(7).trim();
                    int index = Integer.parseInt(numberStr) - 1;
                    
                    if (index >= 0 && index < todoList.size()) {
                        String removedTask = todoList.remove(index);
                        System.out.println("ลบงาน '" + removedTask + "' เรียบร้อยแล้ว");
                    } else {
                        System.out.println("หมายเลขไม่ถูกต้อง กรุณาใส่หมายเลขที่อยู่ในรายการ");
                    }
                } catch (NumberFormatException e) {
                    System.out.println("กรุณาใส่หมายเลขที่ถูกต้อง");
                }
            }
            else {
                System.out.println("คำสั่งไม่ถูกต้อง กรุณาลองใหม่");
            }
        }
        
        scanner.close();
    }
}
