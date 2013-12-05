class AddImagesColumnToAbout < ActiveRecord::Migration
  def change
    add_column :abouts, :images, :string
  end
end
