class PriceForSales < ActiveRecord::Migration
  def change
  	add_column :sales, :cost, :integer
  end
end
