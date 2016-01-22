class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
    	t.string :names
    	t.text :description
    	t.integer :baseCost
    	t.timestamps
    end
  end
end
