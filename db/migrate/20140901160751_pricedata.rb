class Pricedata < ActiveRecord::Migration
  def change
  	create_table(:pricedata) do |t|
  		t.integer					:appID
  		t.float						:price
  		t.timestamp				:retrieved_date
  	end

  end
end
