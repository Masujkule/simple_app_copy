class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.references :user, foreign_key: true
      t.text :body
      t.integer :rating
      t.string :product
      t.string :references

      t.timestamps
    end
  end
end