class Classroom 

    def initialize
        @label 
        @students = []
    end

    attr_accessor :label

    def add_student(student)
        @students.push(student)
        student.classroom = self
    end


end
