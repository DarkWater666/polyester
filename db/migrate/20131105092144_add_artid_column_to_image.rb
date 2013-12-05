class AddArtidColumnToImage < ActiveRecord::Migration
  def change
    add_column :images, :artid, :int
  end
end
