class AddQuantityToSpreeSubscriptions < ActiveRecord::Migration
  def change
    add_column :spree_subscriptions, :quantity, :integer, default: 1, after: :magazine_id
  end
end
