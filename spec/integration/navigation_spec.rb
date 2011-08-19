require 'spec_helper'

describe "Navigation" do
  include Capybara::DSL

  it "should be a valid app" do
    ::Rails.application.should be_a(Dummy::Application)
  end

  it 'should have a responsive index page' do
    visit '/'
    page.should have_content 'This is the index.'
  end

  it 'should include tracking code on the index page' do
    visit '/'
    page.html.should have_content("t.setAttribute('data-site-id', '12345');") # set in application.rb
  end

  it 'should include more specific tracking codes on pages that call our method with an argument' do
    visit '/things/indextwo'
    page.html.should have_content("t.setAttribute('data-site-id', '90210');") # set in method call in view
  end
end
