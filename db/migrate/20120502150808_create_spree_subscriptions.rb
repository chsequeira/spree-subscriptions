class CreateSpreeSubscriptions < ActiveRecord::Migration
  def change
    create_table :spree_subscriptions do |t|
      t.references :variant
      t.references :ship_address
      t.string :email
      t.string :state
      t.timestamps
    end
  end
end
