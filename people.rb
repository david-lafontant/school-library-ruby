class People



    def create_teacher
        age = 0
        until age.positive?
          puts 'age: '
          age = gets.chomp.to_i
        end
        puts 'name:'
        name = gets.chomp
        puts 'Specialization:'
        specialization = gets.chomp
        teacher = Teacher.new(specialization, age, name)
        @people.push(teacher)
        puts teacher.name, teacher.age, teacher.specialization
        puts 'Teacher created succesfully'
        reset
      end
      
      def create_student
        age = 0
        permision = true
        input = ''
        until age.positive?
          puts 'age:'
          age = gets.chomp.to_i
        end
        puts 'name:'
        name = gets.chomp
        if age < 18
          until %w[Y N].include?(input)
            puts 'has parents permission?[Y,N]'
            input = gets.chomp.upcase
            permision = input == 'Y'
          end
        end
        student = Student.new(nil, age, name, parent_permission: permision)
        @people.push(student)
        puts 'Student created succesfuly!'
        reset
      end
end