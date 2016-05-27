class Api::V1::LocationsController < ApplicationController
  respond_to :json
  def index
    req = Rack::Request.new(env)
    Location.create(:user_id => 1, :latlon => "POINT (#{ env["HTTP_LONGITUDE"] } #{ env["HTTP_LATITUDE"] })")
    @resp = {"list": [{ Location.where("ST_Distance(latlon, "+
                   "'POINT(-122.330779 47.604828)') < 10000").
                   map{ |ar| ar.name }}]}
    respond_to do |format|
        format.json { render json: @resp }
    end
    end
  end
    


