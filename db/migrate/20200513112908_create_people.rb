class CreatePeople < ActiveRecord::Migration[6.0]
  def change
    create_table :people do |t|
      t.string :user_id
      t.string :last_name
      t.string :first_name

      t.timestamps
    end
  end
end
