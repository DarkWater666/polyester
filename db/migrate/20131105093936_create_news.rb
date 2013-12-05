class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :autor
      t.text :text

      t.timestamps
    end
  end
end
