class Service < ApplicationRecord
  geocoded_by :postcode
  after_validation :geocode

  def rough_distance
      if distance < 1
        "Less than a mile away"
      elsif (1 < distance) && (distance < 2)
        "About a mile away"
      else
        "About #{distance.round} miles away"
      end
  end

  def safe_url
    if self.url.start_with?('http')
      self.url
    else
      "http://" + self.url
    end
  end

  def self.categories
    [
      ["Groceries and cooked meals", "food"],
      ["Dog walking", "pets"],
      ["Staying social", "social"],
      ["Financial support", "financial"],
      ["Book drops and entertainment", "entertainment"],
      ["Prescription pickups", "prescriptions"],
      ["Physical and mental wellbeing", "wellbeing"]
    ]
  end

end
