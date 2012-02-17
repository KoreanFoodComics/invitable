require 'spec_helper'

feature 'Requesting an invite' do

  background do
    visit root_path
  end

  scenario 'with valid data and non-js' do
    fill_in 'Name', :with => 'Abraham Lincoln'
    fill_in 'Email', :with => 'alincoln@example.com'
    click_button 'Submit'

    page.should have_content 'Thank-you'
  end

  scenario 'with invalid data and non-js' do
    click_button 'Submit'

    page.should have_content 'There was an error, please try again'
  end

  scenario 'with valid data and js', :js => true do
    fill_in 'Name', :with => 'Abraham Lincoln'
    fill_in 'Email', :with => 'alincoln@example.com'
    click_button 'Submit'

    page.should_not have_content 'Thank-you'
    binding.pry
  end

  scenario 'with invalid data and non-js', :js => true do
    click_button 'Submit'

    page.should have_content 'There was an error, please try again'
  end
end
