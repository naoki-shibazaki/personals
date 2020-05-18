class CreatePersonDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :person_details do |t|
      t.integer :user_id
      t.string :category
      t.text :content
      t.references :person, foreign_key: true

      t.timestamps
    end
  end
end
