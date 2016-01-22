class Sale < ActiveRecord::Base
	# Relationships
	belongs_to :customer
	belongs_to :onepackage
	# Validation
	validates :transactionnum, presence: true, :numericality => true
	validates :package_id, presence: true, :numericality => true
	validates :customer_id, presence: true, :numericality => true
end
