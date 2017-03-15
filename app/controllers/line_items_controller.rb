class LineItemsController < ApplicationController
  def create
    current_user.current_cart ||= current_user.carts.create
    # line_item = current_user.current_cart.add_item(params[:item_id])
    current_user.current_cart.add_item(params[:item_id]).save
    # line_item.save
    # redirect_to cart_path(current_user.current_cart)
    redirect_to current_user.current_cart
  end
end
