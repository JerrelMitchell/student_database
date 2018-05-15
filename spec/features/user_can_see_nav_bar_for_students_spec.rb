require 'rails_helper'

describe 'As a user on any page' do
  scenario 'I can see links that direct me to index page and create a student' do
    student = Student.create!(name: 'Sally Soldier')
    index_link = 'All Students'
    create_link = 'Create New Student'
    visit students_path

    expect(page).to have_link(index_link)
    expect(page).to have_link(create_link)

    visit new_student_path

    expect(page).to have_link(index_link)
    expect(page).to have_link(create_link)

    visit edit_student_path(student)

    expect(page).to have_link(index_link)
    expect(page).to have_link(create_link)

    visit student_path(student)

    expect(page).to have_link(index_link)
    expect(page).to have_link(create_link)
  end
end
