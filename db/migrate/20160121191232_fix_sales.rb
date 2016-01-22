class FixSales < ActiveRecord::Migration
  def change
  	rename_column :sales, :product_id, :package_id
  	add_column :sales, :customer_id, :integer
  end
end
