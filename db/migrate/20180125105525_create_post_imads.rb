class CreatePostImads < ActiveRecord::Migration[5.1]
  def change
    create_table :post_imads do |t|
      t.text :shop_name
      t.text :image_id
      t.text :caption
      t.integer :user_id

      t.timestamps
    end
  end
end
