class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
		t.string :name
		t.decimal :price
		t.references :category, index: true
		t.timestamps
    end
  end
end
