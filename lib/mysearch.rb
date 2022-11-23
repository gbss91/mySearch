class MySearch

  def self.booking(attributes, keyword)
    query_attrs = attributes.map { |a| "#{a.to_s} LIKE :search_values"}.join(' OR ')
    Booking.where(query_attrs, search_values: keyword.downcase)
  end

  def self.user(attributes, keyword)
    query_attrs = attributes.map { |a| "#{a.to_s} LIKE :search_values"}.join(' OR ')
    User.where(query_attrs, search_values: keyword.downcase)
  end

  def self.flight(attributes, keyword)
    query_attrs = attributes.map { |a| "#{a.to_s} LIKE :search_values"}.join(' OR ')
    Flight.where(query_attrs, search_values: keyword.downcase)
  end

  def self.hotel(attributes, keyword)
    query_attrs = attributes.map { |a| "#{a.to_s} LIKE :search_values"}.join(' OR ')
    Hotel.where(query_attrs, search_values: keyword.downcase)
  end

end