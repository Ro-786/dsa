import java.util.Scanner;

// Base class
class Shape {

    // --------- VOLUME (Method Overloading) ---------
    double volume(double l, double b, double h) {
        return l * b * h; // Parallelepiped
    }

    double volume(double r) {
        return (4.0 / 3) * Math.PI * r * r * r; // Sphere
    }

    double volume(double r, double h) {
        return Math.PI * r * r * h; // Cylinder
    }

    // --------- SURFACE AREA (Method Overloading) ---------
    double surfaceArea(double l, double b, double h) {
        return 2 * (l * b + l * h + b * h); // Parallelepiped
    }

    double surfaceArea(double r) {
        return 4 * Math.PI * r * r; // Sphere
    }

    double surfaceArea(double r, double h) {
        return 2 * Math.PI * r * (r + h); // Cylinder
    }
}

// --------- Parallelepiped Class ---------
class Parallelepiped extends Shape {
    double l, b, h;

    Parallelepiped(double l, double b, double h) {
        this.l = l;
        this.b = b;
        this.h = h;
    }

    void show() {
        System.out.println("\nParallelepiped:");
        System.out.println("Volume = " + volume(l, b, h));
        System.out.println("Surface Area = " + surfaceArea(l, b, h));
    }
}

// --------- Sphere Class ---------
class Sphere extends Shape {
    double r;

    Sphere(double r) {
        this.r = r;
    }

    void show() {
        System.out.println("\nSphere:");
        System.out.println("Volume = " + volume(r));
        System.out.println("Surface Area = " + surfaceArea(r));
    }
}

// --------- Cylinder Class ---------
class Cylinder extends Shape {
    double r, h;

    Cylinder(double r, double h) {
        this.r = r;
        this.h = h;
    }

    void show() {
        System.out.println("\nCylinder:");
        System.out.println("Volume = " + volume(r, h));
        System.out.println("Surface Area = " + surfaceArea(r, h));
    }
}

// --------- Main Class ---------
public class ShapeProblem {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        // Parallelepiped input
        System.out.println("Enter Parallelepiped dimensions:");
        System.out.print("Length: ");
        double l = sc.nextDouble();
        System.out.print("Breadth: ");
        double b = sc.nextDouble();
        System.out.print("Height: ");
        double h = sc.nextDouble();

        Parallelepiped p = new Parallelepiped(l, b, h);

        // Sphere input
        System.out.println("\nEnter Sphere radius:");
        double r1 = sc.nextDouble();
        Sphere s = new Sphere(r1);

        // Cylinder input
        System.out.println("\nEnter Cylinder dimensions:");
        System.out.print("Radius: ");
        double r2 = sc.nextDouble();
        System.out.print("Height: ");
        double h2 = sc.nextDouble();

        Cylinder c = new Cylinder(r2, h2);

        // Output
        p.show();
        s.show();
        c.show();

        sc.close();
    }
}
