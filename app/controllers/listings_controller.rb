class ListingsController < ApplicationController
  before_filter :accept_only_json

  def index
    @listings = ListingLoader.query(params)
    paginate json: @listings, per_page: 10
  end
end
