namespace :students do 
    desc "Update Student number_of_guardians."
    task update_student_guardian_count: :environment do
        students = Student.all
        students.each do |student|
            guardian_count = student.student_guardians.count
            student.update(number_of_guardians: guardian_count)
        end
    end
end