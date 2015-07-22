require 'rails_helper'

feature 'Creating Bikes' do
  scenario 'can create a bike' do
    visit '/'

    click_link 'New Bike'

    fill_in 'Stlye (Road, Mountain, etc)', with: 'Road'
    fill_in 'Brand', with: 'Giant'
    fill_in 'Year', with: '2007'
    fill_in 'Price', with: '1000'

    click_button 'Create Bike'

    expect(find('.flash')).to have_content('Bike has been created')

  end
end