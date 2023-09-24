class CreateTrabajos < ActiveRecord::Migration[7.0]
  def change
    create_table :trabajos do |t|
      t.string :cargo
      t.string :area
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
