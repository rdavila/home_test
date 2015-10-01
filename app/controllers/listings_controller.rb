class ListingsController < ApplicationController
  before_filter :accept_only_json

  def index
    @listings = ListingLoader.query(params)
  end
end
