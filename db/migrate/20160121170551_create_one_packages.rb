class CreateOnePackages < ActiveRecord::Migration
  def change
    create_table :onepackages do |t|

    	t.string :name
    	t.integer :cost
    	t.integer :product_id
		t.timestamps
    end
  end
end
