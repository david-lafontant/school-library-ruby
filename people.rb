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
    
end