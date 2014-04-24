require 'spec_helper'

feature 'Flowers App' do
  scenario 'user can create Flowers' do

    visit '/'
    expect(page).to have_content 'Flowers!'

    click_on "Add a Flower"
    fill_in'flower_name', with: 'Daisy'

    click_on 'Add'
    expect(page).to have_content 'Flower Type: Daisy'

  end

  scenario 'user can edit/update flowers' do

    visit '/'
    click_on 'Add a Flower'
    fill_in'flower_name', with: 'Rose'
    click_on 'Add'
    expect(page).to have_content 'Flower Type: Rose'
    click_on 'Edit Flower'
    fill_in'edit_name', with: 'Tulip'
    click_on 'Submit'
    expect(page).to have_content 'Flower Type: Tulip'

  end
end