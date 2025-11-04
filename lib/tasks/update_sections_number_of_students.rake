namespace :sections do 
    desc "Update Section number_of_students."
    task update_section_number_of_student: :environment do
      sections = Section.all
      sections.each do |section|
        student_count = section.classlists.count
        section.update(number_of_students: student_count)
      end
    end
  end