class Onepackage < ActiveRecord::Base
	# Relationships
	has_many :products
	has_many :sales
	has_many :customers, through: :sales
	# Validations
	validates :name, presence: true, :uniqueness => true
	validates :cost, presence: true, :numericality => true
	validates :product_ida, presence: true, :numericality => true
end
