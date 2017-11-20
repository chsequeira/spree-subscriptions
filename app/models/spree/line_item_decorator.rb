module Spree
  LineItem.class_eval do
    validates_numericality_of :quantity, less_than_or_equal_to: 1, if: :quantity_limited_to_one?

    def subscribable_product?
      product.subscribable?
    end

    def quantity_limited_to_one?
      product.subscribable? && SUBSCRIPTIONS_QUANTITY_IS_ONE
    end

  end
end
