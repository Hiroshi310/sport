class StaticPagesController < ApplicationController
  def home
    @events = Event.all.order("updated_at DESC").limit(30)
  end
end
