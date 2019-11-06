class CreateDevelopers < ActiveRecord::Migration[5.2]
  def change
    create_table :developers do |t|
      t.string :name
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end
