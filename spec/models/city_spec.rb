describe City, :type => :model do
  before(:each) { 
  	@city = build(:city)
  }

  subject { @city }

  it { should respond_to(:name) }

  it { should be_valid }

  it "checks if city name is New York City" do
  	expect(@city.name).to eq('New York City')
  end

  it "checks if city short name is NYC" do
  	expect(@city.short_name).to eq('NYC')
  end

end
