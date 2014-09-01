class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
			t.integer 			:appID, :null => false
  		t.string				:title, :null => false
  		t.integer 			:releasedate, :null => false
  		t.integer				:lastupdate, :null => false
  		t.integer				:flags, :null => false
  		t.timestamps
  	end

  	add_index :games, :appID, unique: true
  end
end