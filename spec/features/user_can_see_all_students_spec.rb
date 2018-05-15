require 'rails_helper'

describe 'user sees all students' do
  describe 'they visit /students' do
    it 'lists all students names as links to their show page' do
      student1 = Student.create!(name: 'Sonya Jackson')
      student2 = Student.create!(name: 'Bob Bobson')

      visit students_path

      expect(page).to have_link(student1.name)
      expect(page).to have_link(student2.name)
    end
  end
end
