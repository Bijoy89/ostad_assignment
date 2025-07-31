
abstract class Role {
  void displayRole();
}

class Person implements Role {
  String name;
  int age;
  String address;
  Role? role;

  Person(this.name, this.age, this.address);

  @override
  void displayRole() {
    print("Role: Person");
  }

  String getName() => name;
  int getAge() => age;
  String getAddress() => address;
}

class Student extends Person {
  String studentID;
  String grade;
  List<double> courseScores;

  Student({
    required String name,
    required int age,
    required String address,
    required this.studentID,
    required this.grade,
    required this.courseScores,
  }) : super(name, age, address);

  @override
  void displayRole() {
    print("Role: Student");
  }

  double calculateAverageScore() {
    if (courseScores.isEmpty) return 0.0;
    double sum = courseScores.reduce((a, b) => a + b);
    return sum / courseScores.length;
  }
}

class Teacher extends Person {
  String teacherID;
  List<String> coursesTaught;

  Teacher({
    required String name,
    required int age,
    required String address,
    required this.teacherID,
    required this.coursesTaught,
  }) : super(name, age, address);

  @override
  void displayRole() {
    print("Role: Teacher");
  }

  void displayCoursesTaught() {
    for (var course in coursesTaught) {
      print("- $course");
    }
  }
}

void main() {
  // Created a Student instance
  Student student = Student(
    name: "John Doe",
    age: 20,
    address: "123 Main St",
    studentID: "S123",
    grade: "A",
    courseScores: [90, 85, 82],
  );

  // Created a Teacher instance
  Teacher teacher = Teacher(
    name: "Mrs. Smith",
    age: 35,
    address: "456 Oak St",
    teacherID: "T456",
    coursesTaught: ["Math", "English", "Bangla"],
  );

  // Display student info
  print("Student Information:");
  student.displayRole();
  print("Name: ${student.getName()}");
  print("Age: ${student.getAge()}");
  print("Address: ${student.getAddress()}");
  print("Average Score: ${student.calculateAverageScore()}");

  print("\nTeacher Information:");
  teacher.displayRole();
  print("Name: ${teacher.getName()}");
  print("Age: ${teacher.getAge()}");
  print("Address: ${teacher.getAddress()}");
  print("Courses Taught:");
  teacher.displayCoursesTaught();
}
