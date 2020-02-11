class CreateReactions < ActiveRecord::Migration[6.0]
  def change
    create_table :reactions do |t|
      t.integer :user_id
      t.integer :picture_id
      t.string :reaction_key

      t.timestamps
    end
  end
end
