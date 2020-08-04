class CreateFanFaves < ActiveRecord::Migration[6.0]
  def change
    create_table :fan_faves do |t|
      t.belongs_to :character, null: false, foreign_key: true
      t.belongs_to :user, null: false, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
