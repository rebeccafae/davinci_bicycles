require 'rails_helper'

feature 'Creating Bikes' do
  scenario 'can create a bike' do
    visit '/'

    click_link 'New Bike'

    fill_in 'Style (Road, Mountain, etc)', with: 'Road'
    fill_in 'Brand', with: 'Giant'
    fill_in 'Year', with: '2007'
    fill_in 'Price', with: '1000'

    click_button 'Create Bike'

    expect(find('.flash')).to have_content('2007 Giant Road bike has been created for $1000.0')

  end
end