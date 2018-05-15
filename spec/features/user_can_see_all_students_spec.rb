require 'rails_helper'

describe 'user sees all students' do
  describe 'they visit /students' do
    it 'displays all students' do
      student1 = Student.new(name: 'Sonya Jackson')
      student2 = Student.new(name: 'Bob Bobson')

      visit '/students'

      expect(page).to have_content(student1.name)
      expect(page).to have_content(student2.name)
    end
  end
end
