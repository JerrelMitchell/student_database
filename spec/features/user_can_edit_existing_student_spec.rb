require 'rails_helper'

describe 'User edits an existing student' do
  scenario 'when clicking edit link for a student' do
    name     = 'Sonya Tonyason'
    new_name = 'Betty Blonde'
    student  = Student.create!(name: name)

    visit edit_student_path(student)

    fill_in 'student[name]', with: new_name
    click_button 'Update'

    expect(current_path).to eq(student_path(student.id))
    expect(page).to have_content(new_name)
    expect(page).to_not have_content(name)
  end
end
