require 'spec_helper'

feature 'Requesting an invite' do
  include EmailSpec::Helpers
  include EmailSpec::Matchers

  background do
    reset_mailer
    visit root_path
  end

  scenario 'with valid data and non-js' do
    fill_in 'Email', :with => 'alincoln@example.com'
    click_button 'Submit'

    page.should have_content 'Thank-you'
    open_email('alincoln@example.com')
    current_email.body.should have_content 'Thank-you'
  end

  scenario 'with invalid data and non-js' do
    click_button 'Submit'

    page.should have_content 'There was an error, please try again'
    ActionMailer::Base.deliveries.should be_empty
  end

  scenario 'with valid data and js', :js => true do
    fill_in 'Email', :with => 'alincoln@example.com'
    click_button 'Submit'

    page.should have_content 'Thank-you'
    open_email('alincoln@example.com')
    current_email.body.should have_content 'Thank-you'
  end

  scenario 'with invalid data and js', :js => true do
    click_button 'Submit'

    page.should have_content 'There was an error, please try again'
    ActionMailer::Base.deliveries.should be_empty
  end
end
