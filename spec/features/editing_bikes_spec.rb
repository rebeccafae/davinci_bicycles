require 'rails_helper'

feature 'Editing Bikes' do
  scenario 'can edit a bike' do
    visit '/'

    click_link 'New Bike'

    fill_in 'Style (Road, Mountain, etc)', with: 'Road'
    fill_in 'Brand', with: 'Giant'
    fill_in 'Year', with: '2007'
    fill_in 'Price', with: '1000'

    click_button 'Create Bike'

    expect(find('.flash')).to have_content('2007 Giant Road bike has been created.')

    click_link 'Edit'

    fill_in 'Style (Road, Mountain, etc)', with: 'Road'
    fill_in 'Brand', with: 'Schwinn'
    fill_in 'Year', with: '2007'
    fill_in 'Price', with: '2511'

    click_button 'Update Bike'

    expect(find('.flash')).to have_content('2007 Schwinn Road bike has been updated.')

    expect(find('#bikes_table')).to have_content('Road')
    expect(find('#bikes_table')).to have_content('Schwinn')
    expect(find('#bikes_table')).to have_content('2007')
    expect(find('#bikes_table')).to have_content('$2,511.00')

    expect(find('#bikes_table')).to_not have_content('Giant')
    expect(find('#bikes_table')).to_not have_content('$1,000.00')


  end
end