class CreatePostulacions < ActiveRecord::Migration[7.0]
  def change
    create_table :postulacions do |t|
      t.string :message
      t.references :user, null: false, foreign_key: true
      t.references :trabajo, null: false, foreign_key: true

      t.timestamps
    end
  end
end
