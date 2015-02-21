include Warden::Test::Helpers
Warden.test_mode!

feature 'City index page', :devise do

  before(:each) do
    user = FactoryGirl.create(:user)
    login_as(user, scope: :user)
  end

  after(:each) do
    Warden.test_reset!
  end

  scenario 'user sees all cities' do
    city1, city2 = City.create!(name: "Cracow"), City.create!(name: "New York City")
    visit cities_path
    expect(page).to have_css('.table tr', :count => 2)
  end

end
