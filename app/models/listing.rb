class Listing < ActiveRecord::Base
  validates :street, :status, :price, :bedrooms, :bathrooms, :sq_ft, :lat, :lng
end
