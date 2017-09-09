class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :summary, null: false
      t.string :description
      t.integer :user_id, null: false

      t.timestamps
    end
  end
end
