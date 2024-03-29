require_relative('../db/sql_runner')

class Student

  attr_reader :first_name, :second_name, :house, :age
  attr_accessor :id

  def initialize(options)
    @id = options['id'].to_i
    @first_name = options['first_name']
    @second_name = options['second_name']
    @house = options['house']
    @age = options['age'].to_i
  end

  def full_name
    return "#{@first_name} #{@second_name}"
  end

  def save
    sql = "INSERT INTO students
          (
            first_name,
            second_name,
            house,
            age
          )
          VALUES
          (
            $1, $2, $3, $4
          )
          RETURNING *"
    values = [@first_name, @second_name, @house, @age]
    student_data = SqlRunner.run(sql, values)
    @id = student_data.first()['id'].to_i
  end

  def find_house
    sql = "SELECT * FROM houses where id = $1"
    values = [@house]
  end

  def self.all
    sql = "SELECT * FROM students"
    students = SqlRunner.run(sql)
    result = students.map{|student| Student.new(student)}
    return result
  end

  def self.find_by_id(id)
    sql = "SELECT * FROM students
    WHERE id = $1"
    values = [id]
    student = SqlRunner.run(sql, values)
    result = Student.new(student.first)
    return result
  end

end
