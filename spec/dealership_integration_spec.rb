require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the dealership homepage path', {:type => :feature}) do
  it('allows user to add new dealership') do
    visit('/')
    fill_in('new_dealer', :with => "Used Cars Dot Com")
    click_button('Add')
    expect(page).to have_content("Used Cars Dot Com")
  end
end

describe('the path to list of dealership vehicles', {:type => :feature}) do
  it('lists the vehicles owned by that dealership') do
    visit('/dealership_list')
    click_link('Used Cars Dot Com')
    expect(page).to have_content('Used Cars Dot Com')
  end
end
