class CreateHelds < ActiveRecord::Migration[5.2]
  def change
    create_table :helds do |t|
      t.integer :user_id
      t.string :description
      t.string :image
  
      t.string :event_name, presence: true
      t.datetime :held_time, presence: true
      t.string :address, presence: true
      t.string :helder, presence: true

      t.timestamps
      
    end
  end
end
