class DefaultRemainingIssuesToZero < ActiveRecord::Migration
  def up
    change_column :spree_subscriptions, :remaining_issues, :integer, default: 0
  end
  def down
    change_column :spree_subscriptions, :remaining_issues, :integer, default: nil
  end
end
