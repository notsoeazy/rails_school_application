namespace :guardians do 
    desc "Update Guardian number_of_students."
    task update_guardian_student_count: :environment do
        guardians = Guardian.all
        guardians.each do |guardian|
            guardian_count = guardian.student_guardians.count
            guardian.update(number_of_students: guardian_count)
        end
    end
end