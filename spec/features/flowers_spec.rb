require 'spec_helper'

feature 'Flowers App' do
  scenario 'user can create Flowers' do

    visit '/'
    expect(page).to have_content 'Flowers!'

    click_on "Add a Flower"
    fill_in'flower_name', with: 'Daisy'

    click_on 'Add'
    save_and_open_page
    expect(page).to have_content 'Flower Type: Daisy'

  end
end