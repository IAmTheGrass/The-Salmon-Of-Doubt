class Game < ActiveRecord::Migration
  def change
  	    create_table :games do |t|
    	t.integer :user_id
    	t.integer :one
    	t.integer :two
    	t.integer :three
    	t.integer :four
    	t.integer :five
    	t.integer :six
    	t.integer :seven
    	t.integer :eight
    	t.integer :nine
		t.timestamps
	end
  end
end
