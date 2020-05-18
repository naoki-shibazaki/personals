class RemoveColumn < ActiveRecord::Migration[6.0]
  def change
    remove_column :person_details, :user_id, :integer
    add_reference :person_details, :user, foreign_key: true
  end
end
