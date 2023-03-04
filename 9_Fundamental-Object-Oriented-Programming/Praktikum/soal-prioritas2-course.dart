class Course {

  String judul;
  String deskripsi;

  Course(this.judul, this.deskripsi);

}

class Student {
  
    String name;
    var courses = <Course>[];
  
    Student(this.name);
  
    void addCourse(Course course) {
      courses.add(course);
    }
  
    void removeCourse(Course course) {
      courses.remove(course);
    }

    void showCourses() {
      print('Courses: ');
      for (var course in courses) {
        print(course.judul);
      }
    }
  
}

void main(){

  var course1 = Course('Dart', 'Dart is a programming language');
  var course2 = Course('Flutter', 'Flutter is a framework');
  var course3 = Course('Kotlin', 'Kotlin is a programming language');

  var student1 = Student('John');
  student1.addCourse(course1);
  student1.addCourse(course2);
  student1.addCourse(course3);

  student1.showCourses();

  student1.removeCourse(course2);

  student1.showCourses();


   
}