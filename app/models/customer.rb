class Customer < ActiveRecord::Base
	# Relationships
	has_many :sales
	has_many :onepackages, through: :sales
	has_many :products, through: :onepackages
	# Validations
	validates :name, presence: true, :uniqueness => true
  	validates :company, presence: true
  	validates :userClass, presence: true
end
