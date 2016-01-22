class Product < ActiveRecord::Base
	# Relationships
	has_many :onepackages
	has_many :sales, through: :onepackages
	has_many :customers, through: :sales
	# Validations
	validates :name, presence: true, :uniqueness => true
	validates :description, presence: true
	validates :baseCost, presence: true, :numericality => true
end
