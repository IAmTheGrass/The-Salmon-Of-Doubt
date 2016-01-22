class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
    	t.string :name
    	t.string :company
    	t.string :userClass
		t.timestamps
    end
  end
end
