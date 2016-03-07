class EventsController < ApplicationController
    before_action :logged_in_user, only: [:create]

  def new
    @event = current_user.events.build if logged_in?
  end  

  def create
    @event = current_user.events.build(event_params)
    if @event.save
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
    :schedule, :price, :numberofpeople, :movie, :category_list)
  end

end
