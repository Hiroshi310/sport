class EventsController < ApplicationController
    before_action :logged_in_user, only: [:create]

  def new
    @event = current_user.events.build if logged_in?
    @areas = Area.order(:parent_id)
    
    #都道府県　area.parent_id=nilのものを親(@areas_parent)としておく。
    #子供(@areas_children)はそれ以外の時
    @areas_parent = []
    @areas_children = []
    
    @areas.each do |area|
      if !!area.parent_id
        @areas_children << area
        # Areaを探してnullの場合@areas_children[parant_id.each]
      else
        @areas_parent << area
      end
    end

  end

  def create
    binding.pry
    @event = current_user.events.build(event_params)
    if @event.save!
      flash[:success] = "企画を投稿しました！"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end
  
  def show
    @event = Event.find(params[:id])
  end
  
  private
  def event_params
    params.require(:event).permit(:title, :image, :content, 
    :schedule, :price, :numberofpeople, :movie, :category_list, :area_id, :area, :area_name)
  end

end
