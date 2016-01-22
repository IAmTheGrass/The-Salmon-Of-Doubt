class DropingAColum < ActiveRecord::Migration
  def change
  	remove_column :sales, :cost
  end
end
