class MapController < ApplicationController
  def index
    @houmons = Houmon.all
    @hash = Gmaps4rails.build_markers(@houmons) do |houmon, marker|
      marker.lat houmon.lat
      marker.lng houmon.lng
      marker.infowindow houmon.houmon_su
      marker.json({title: houmon.houmon_su})
    end
  end
end
