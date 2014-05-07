class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.integer :product_type_id
      t.string :slug

      t.timestamps
    end

    add_attachment :products, :image
  end
end
