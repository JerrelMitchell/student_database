require 'rails_helper'

describe 'As a user visiting a specific student page' do
  scenario 'I click a link from the students index and see a students info' do
    student = Student.create!(name: 'Sonya Taylor')

    visit student_path(student)

    expect(page).to have_content(student.name)
  end
end
