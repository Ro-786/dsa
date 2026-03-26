import java.util.Scanner;

class Student {
    String name;
    int roll;
    int regNo;
    int m1, m2, m3;

    void input() {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter name: ");
        name = sc.nextLine();

        System.out.print("Enter roll: ");
        roll = sc.nextInt();

        System.out.print("Enter registration number: ");
        regNo = sc.nextInt();

        System.out.print("Enter marks 1: ");
        m1 = sc.nextInt();

        System.out.print("Enter marks 2: ");
        m2 = sc.nextInt();

        System.out.print("Enter marks 3: ");
        m3 = sc.nextInt();
    }

    void Result() {
        double avg = (m1 + m2 + m3) / 3.0;

        System.out.println("\n--- Student Details ---");
        System.out.println("Name: " + name);
        System.out.println("Roll: " + roll);
        System.out.println("Registration No: " + regNo);
        System.out.println("Marks: " + m1 + ", " + m2 + ", " + m3);
        System.out.println("Average: " + avg);
    }
}

public class MainClass {
    public static void main(String[] args) {
        Student s = new Student();

        s.input();   // 👈 changed here
        s.Result();
    }
}
