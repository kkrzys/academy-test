include Warden::Test::Helpers
Warden.test_mode!

feature 'City edit', :devise do

  before(:each) do
    @city = FactoryGirl.create(:city)
    user = FactoryGirl.create(:user)
    login_as(user, scope: :user)
  end

  after(:each) do
    Warden.test_reset!
  end

  scenario 'user changes city name and short_name' do
    visit edit_city_path(@city)
    fill_in 'Name', :with => 'London'
    fill_in 'Short name', :with => 'LD'
    click_button 'Update City'
    expect(page).to have_content 'City'
    expect(page).to have_content 'London'
    expect(page).to have_content 'LD'
  end

end
