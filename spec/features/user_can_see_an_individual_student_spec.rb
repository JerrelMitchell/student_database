require 'rails_helper'

describe 'As a user visiting a specific student page' do
  scenario 'I click a link from the students index and see a students info' do
    student = Student.create!(name: 'Sonya Taylor')

    visit student_path(student)

    expect(page).to have_content(student.name)
  end

  scenario 'displays addresses for one student' do
    student = Student.create!(name: 'Tonya Sonyason')
    address1 = student.addresses.create!(description: 'this way', street: 'street1', city: 'Denver', state: 'CO', zip_code: 123456)
    address2 = student.addresses.create!(description: 'that way', street: 'street2', city: 'Boulder', state: 'TX', zip_code: 654321)

    visit student_path(student)

    save_and_open_page

    expect(page).to have_content(student.name)

    expect(page).to have_content(address1.description)
    expect(page).to have_content(address1.street)
    expect(page).to have_content(address1.city)
    expect(page).to have_content(address1.state)
    expect(page).to have_content(address1.zip_code)

    expect(page).to have_content(address2.description)
    expect(page).to have_content(address2.street)
    expect(page).to have_content(address2.city)
    expect(page).to have_content(address2.state)
    expect(page).to have_content(address2.zip_code)
  end
end
