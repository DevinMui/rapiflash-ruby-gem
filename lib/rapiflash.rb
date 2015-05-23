require 'faraday'
require 'json'
require 'net/http'

API_URL = "http://api.devinmui.c9.io/api/v1"

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
  
  def self.create_data(normal_level,current_level,flooded,location,upstream)
    response = Faraday.post "#{API_URL}/floods", {flood: {current_level: current_level, normal_level: normal_level, flooded: flooded, location: location, upstream: upstream}}
    return response.body
  end
  
  def self.all
    response = Faraday.get("#{API_URL}/floods")
    flood = JSON.parse(response.body)
    flood.map { |attributes| new(attributes) }
  end
end

# postData = Net::HTTP.post_form(URI.parse('#{API_URL}/floods/'), {"flood" => {'current_level' => 9002, 'normal_level' => 9001, 'flooded' => true, 'location' => "SF", 'upstream' => 5}})