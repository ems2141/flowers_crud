require 'spec_helper'

feature 'Flowers App' do
  scenario 'welcome page exists' do

    visit '/'
    expect(page).to have_content 'Flowers!'

  end
end