require 'faraday'
require 'json'

API_URL = "http://api.devinmui.c9.io/api/v1/"

class Flood
  attr_reader :id, :normal_level, :current_level, :flooded, :upstream, :location, :created_at, :updated_at
  def initialize(attributes)
    @id = attributes["id"]
    @normal_level = attributes["normal_level"]
    @current_level = attributes["current_level"]
    @flooded = attributes["flooded"]
    @upstream = attributes["upstream"]
    @location = attributes["location"]
    @created_at = attributes["created_at"]
    @updated_at = attributes["updated_at"]
  end
  def self.find(id)
    response = Faraday.get("#{API_URL}/floods/#{id}")
    attributes = JSON.parse(response.body)
    new(attributes)
  end
  def self.all
    response = Faraday.get("#{API_URL}/floods")
    flood = JSON.parse(response.body)
    flood.map { |attributes| new(attributes) }
  end
end
