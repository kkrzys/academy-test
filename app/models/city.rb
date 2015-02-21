class City < ActiveRecord::Base
	validates :name, presence: true, length: { minimum: 5 }
	has_many :users
end
