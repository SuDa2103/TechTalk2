class CreateSubscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :subscriptions do |t|
      t.references :user
      t.references :community
      t.timestamps
    end
  end
end
