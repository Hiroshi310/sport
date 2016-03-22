class Entry < ActiveRecord::Base
  belongs_to :user, class_name: "User"  # ユーザー
  belongs_to :evnt, class_name: "Event"  # いべんと
  
  def toggle
    event_id = params[:event_id]
    user_entrys = current_user.entrys
    if user_entrys.exists?(event: event_id)
      user_entrys.where(event: event_id).destroy_all
    else
      user_entrys.create(user: current_user, event: event.find(event_id))
    end
    render :nothing => true
  end
end
