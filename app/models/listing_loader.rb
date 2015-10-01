class ListingLoader
  FIELDS_MAPPING = {
    'min_price' => 'listings.price >= ?',
    'max_price' => 'listings.price <= ?',
    'min_bed'   => 'listings.bedrooms >= ?',
    'max_bed'   => 'listings.bedrooms <= ?',
    'min_bath'  => 'listings.bathrooms >= ?',
    'max_bath'  => 'listings.bathrooms <= ?',
  }

  def self.query(params)
    base_query = Listing.all
    conditions = params.slice(*FIELDS_MAPPING.keys)

    conditions.each do |field_alias, value|
      base_query = base_query.where(FIELDS_MAPPING[field_alias], value)
    end

    base_query
  end
end
