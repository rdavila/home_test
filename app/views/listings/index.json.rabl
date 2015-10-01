node(:type) { 'FeatureCollection' }

child({ @listings => :features }, { :object_root => false }) do
  node(:properties) do |l|
    { id: l.id,
      price: l.price,
      street: l.street,
      bedrooms: l.bedrooms,
      bathrooms: l.bathrooms,
      sq_ft: l.sq_ft }
  end

  node(:type) { "Feature" }

  node(:geometry) do |l|
    { type: 'Point', coordinates: [l.lat, l.lng] }
  end
end
