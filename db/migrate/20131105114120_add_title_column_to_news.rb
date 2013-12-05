class AddTitleColumnToNews < ActiveRecord::Migration
  def change
    add_column :news, :title, :string
  end
end
