import java.util.*;

class Stack {
    int[] arr;
    int top;
    int capacity;

    Stack(int size) {
        arr = new int[size];
        capacity = size;
        top = -1;
    }

    void push(int x) {
        if (top == capacity - 1) {
            System.out.println("Stack Overflow");
            return;
        }
        arr[++top] = x;
        System.out.println(x + " pushed");
    }

    void pop() {
        if (top == -1) {
            System.out.println("Stack Underflow");
            return;
        }
        System.out.println(arr[top--] + " popped");
    }

    void display() {
        if (top == -1) {
            System.out.println("Stack is empty");
            return;
        }
        for (int i = top; i >= 0; i--) {
            System.out.print(arr[i] + " ");
        }
        System.out.println();
    }

    int size() {
        return top + 1;
    }
}

class Main1 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        Stack s1 = new Stack(5);
        Stack s2 = new Stack(5);

        int choice;

        do {
            System.out.println("\n--- MENU ---");
            System.out.println("1. Push in Stack 1");
            System.out.println("2. Push in Stack 2");
            System.out.println("3. Pop from Stack 1");
            System.out.println("4. Pop from Stack 2");
            System.out.println("5. Display Stack 1");
            System.out.println("6. Display Stack 2");
            System.out.println("7. Exit");

            System.out.print("Enter choice: ");
            choice = sc.nextInt();

            switch (choice) {
                case 1:
                    System.out.print("Enter value: ");
                    s1.push(sc.nextInt());
                    break;

                case 2:
                    System.out.print("Enter value: ");
                    s2.push(sc.nextInt());
                    break;

                case 3:
                    s1.pop();
                    break;

                case 4:
                    s2.pop();
                    break;

                case 5:
                    System.out.print("Stack 1: ");
                    s1.display();
                    break;

                case 6:
                    System.out.print("Stack 2: ");
                    s2.display();
                    break;

                case 7:
                    System.out.println("Exiting...");
                    break;

                default:
                    System.out.println("Invalid choice");
            }

            // 🔥 Auto check condition
            if (s1.size() == s2.size()) {
                System.out.println("⚡ Both stacks have equal elements: " + s1.size());
            }

        } while (choice != 7);
    }
}
