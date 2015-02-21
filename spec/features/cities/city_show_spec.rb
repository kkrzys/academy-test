include Warden::Test::Helpers
Warden.test_mode!

feature 'City page', :devise do

  before(:each) do
    @city = FactoryGirl.create(:city)
    user = FactoryGirl.create(:user)
    login_as(user, scope: :user)
  end

  after(:each) do
    Warden.test_reset!
  end

  scenario 'user sees city page' do
    visit city_path(@city)
    expect(page).to have_content 'City'
    expect(page).to have_content @city.name
    expect(page).to have_content @city.short_name
  end

end
