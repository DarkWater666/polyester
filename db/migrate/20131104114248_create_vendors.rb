class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.text :text

      t.timestamps
    end
  end
end
