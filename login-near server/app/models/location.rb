class Location < ActiveRecord::Base
  attr_accessible :latlon, :user_id
   set_rgeo_factory_for_column(:latlon,
    RGeo::Geographic.spherical_factory(:srid => 4326))
end
