include Warden::Test::Helpers
Warden.test_mode!

feature 'City delete', :devise, :js do

  before(:each) do
    @city = FactoryGirl.create(:city)
    user = FactoryGirl.create(:user)
    login_as(user, scope: :user)
  end

  after(:each) do
    Warden.test_reset!
  end

  scenario 'user deletes city' do
    skip 'skip a slow test'
    visit city_path(@city)
    click_button 'Delete city'
    page.driver.browser.switch_to.alert.accept
    expect(page).to have_content 'All cities'
  end

end
