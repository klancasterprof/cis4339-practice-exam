class AddNotesToCategory < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :notes, :string
  end
end
