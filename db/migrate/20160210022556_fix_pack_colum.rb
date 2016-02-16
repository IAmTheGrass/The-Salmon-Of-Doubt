class FixPackColum < ActiveRecord::Migration
  def change
  	rename_column :sales, :package_id, :onepackage_id
  end
end
