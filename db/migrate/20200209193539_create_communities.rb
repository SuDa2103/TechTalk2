class CreateCommunities < ActiveRecord::Migration[5.2]
  def change
    create_table :communities do |t|
      t.references :user
      t.string :name
      t.string :url
      t.integer :total_members
      t.text :rules
    end
  end
end
