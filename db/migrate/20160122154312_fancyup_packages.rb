class FancyupPackages < ActiveRecord::Migration
  def change
  	rename_column :onepackages, :product_id, :product_ida
  	add_column :onepackages, :product_idb, :integer
  	add_column :onepackages, :product_idc, :integer
  	add_column :onepackages, :type, :string
  end
end
