class CreateIcecreams < ActiveRecord::Migration
  def change
    create_table :icecreams do |t|
      t.string :flavor
      t.integer :rating
      t.string :topping
    end
  end

end
