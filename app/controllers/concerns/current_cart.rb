module CurrentCart
  private
    def set_cart
      @cart = Cart.find(session[:cart_id])
    rescue ActiveRecord::RecordNotFound
      @cart = Cart.create
      session[:cart_id] = @cart.id
    end

    def visit_index_count
      if session[:counter].nil?
        @visit = 0
        session[:counter] = @visit
      else
        @visit = session[:counter] + 1
        session[:counter] = @visit
      end
    end

    def reset_visit_counter
      session[:counter] = 0
    end
end