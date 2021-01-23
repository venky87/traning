class StudentHash
  @@students = []

  def add_student(name:, roll_no:, marks:)
    student = {}
    student[:name]    = name
    student[:roll_no] = roll_no
    student[:marks]   = marks
    @@students.push(student)
  end

  def list_students
    puts @@students
  end

  def pass?(roll_no:)
    student(roll_no: roll_no)[:marks] >= 35
  end

  def grade(roll_no:)
    case student(roll_no: roll_no)[:marks]
    when 80..100
      'A'
    when 60..79
      'B'
    when 40..59
      'C'
    else
      'D'
    end
  end
  
  private

  def student(roll_no:)
    @@students.find{|student| student[:roll_no] == roll_no}
  end
end

student_hash = StudentHash.new
student_hash.add_student(name: "Test", roll_no: 1, marks: 34) 
student_hash.add_student(name: "Test New", roll_no: 2, marks: 35) 
student_hash.add_student(name: "Test Newer", roll_no: 5, marks: 36) 
student_hash.add_student(roll_no: 6, name: "Test Newest", marks: 82) 
puts student_hash.pass?(roll_no: 1)
puts student_hash.grade(roll_no: 6)
puts student_hash.grade(roll_no: 5)
