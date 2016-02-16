class AddPeice < ActiveRecord::Migration
  def change
  	add_column :games, :peice, :string
  end
end
