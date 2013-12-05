class CreateYarns < ActiveRecord::Migration
  def change
    create_table :yarns do |t|
      t.text :text
      t.string :title
      t.string :autor

      t.timestamps
    end
  end
end
