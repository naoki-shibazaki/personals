class DropTeble < ActiveRecord::Migration[6.0]
  def change
    drop_table :personals
  end
end
