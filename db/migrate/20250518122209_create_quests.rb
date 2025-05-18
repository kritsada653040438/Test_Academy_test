class CreateQuests < ActiveRecord::Migration[8.0]
  def change
    create_table :quests do |t|
      t.string :name
      t.string :details
      t.boolean :status

      t.timestamps
    end
  end
end
