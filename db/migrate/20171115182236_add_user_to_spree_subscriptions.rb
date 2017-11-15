class AddUserToSpreeSubscriptions < ActiveRecord::Migration
  def up
    add_reference :spree_subscriptions, :user, index: true, after: :quantity

    Spree::Subscription.all.each do |subscription|
      user = Spree::User.find_by( email: subscription.email)
      subscription.update_column( :user_id, user.id) if user.present?
    end
  end

  def down
    remove_column :spree_subscriptions, :user_id
  end
end
