class Task < ActiveRecord::Base
  attr_accessible :category, :description, :expiration, :lattitude, :location_name, :longitude, :name, :offer, :photo_url
end
