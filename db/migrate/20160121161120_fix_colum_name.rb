class FixColumName < ActiveRecord::Migration
  def change
  	rename_column :products, :names, :name
  end
end
