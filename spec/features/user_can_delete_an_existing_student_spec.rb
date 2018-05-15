require 'rails_helper'

describe 'user deletes a student' do
  describe 'they link from the show page' do
    it 'redirects to index and shows students except for deleted entry' do
      student1 = Student.create!(name: 'A Bob')
      student2 = Student.create!(name: 'A Bill')

      visit student_path(student1)
      click_link 'Delete'

      expect(current_path).to eq(students_path)
      expect(page).to have_content(student2.name)
      expect(page).to_not have_content(student1.name)
    end
  end
end
