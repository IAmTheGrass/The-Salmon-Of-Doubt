class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|

    	t.integer :transactionnum
    	t.integer :product_id
    	t.integer :cost
		t.timestamps
    end
  end
end
