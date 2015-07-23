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

    expect(find('.flash')).to have_content('2007 Giant Road bike has been created.')

  end

  scenario 'can create a 2nd bike' do
    visit '/'

    click_link 'New Bike'

    fill_in 'Style (Road, Mountain, etc)', with: 'Road'
    fill_in 'Brand', with: 'Giant'
    fill_in 'Year', with: '2007'
    fill_in 'Price', with: '1000'

    click_button 'Create Bike'

    expect(find('.flash')).to have_content('2007 Giant Road bike has been created.')

    click_link 'New Bike'

    fill_in 'Style (Road, Mountain, etc)', with: 'Road'
    fill_in 'Brand', with: 'Torpado'
    fill_in 'Year', with: '1980'
    fill_in 'Price', with: '2000'

    click_button 'Create Bike'

    expect(find('.flash')).to have_content('1980 Torpado Road bike has been created.')

    expect(find('#bikes_table')).to have_content('Giant')
    expect(find('#bikes_table')).to have_content('$1,000.00')
    expect(find('#bikes_table')).to have_content('Torpado')
    expect(find('#bikes_table')).to have_content('$2,000.00')

  end
end