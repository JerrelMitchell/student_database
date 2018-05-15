require 'rails_helper'

describe 'user can create a new student' do
  describe 'when they visit /students/new' do
    it 'fills out and submits form and is directed to new student show page' do
      name = 'Tonya Christinson'

      visit new_student_path

      fill_in 'student[name]', with: name
      click_button 'Create'

      expect(current_path).to eq(student_path(Student.last.id))
      expect(page).to have_content(name)
    end
  end
end
