class LineItemsController < ApplicationController
  def create
    current_user.current_cart ||= current_user.carts.create
    current_user.current_cart.add_item(params[:item_id]).save
    redirect_to current_user.current_cart
  end
end
