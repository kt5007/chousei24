class CreateParticipates < ActiveRecord::Migration[5.2]
  def change
    create_table :participates do |t|
      t.integer :user_id
      t.integer :held_id

      t.timestamps
    end
  end
end
