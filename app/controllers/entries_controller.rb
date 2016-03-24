class EntriesController < ApplicationController
before_action :logged_in_user

  def create
    # typeがhaveの場合、ownaershipテーブルに情報を保存したい type:haveとして保存、
    if params[:type] == 'null' #haveの場合は
      current_user.ent(@event) #current_userにhaveメソッドを実行する
    # wantしている商品
    else
      current_user.ent(@event)
    end
      
  end

    # TODO ユーザにwant or haveを設定する
    # params[:type]の値ににHaveボタンが押された時には「Have」,
    # Wantボタンがされた時には「Want」が設定されています。
    
  def destroy
    @event = Event.find(params[:event_id])
    if params[:type] == 'null' #haveの場合は
      current_user.unent(@event) #current_userにhaveメソッドを実行する
    # wantしている商品
    else
      current_user.unent(@event)
    end
    
    # TODO 紐付けの解除。 
    # params[:type]の値にHave itボタンが押された時には「Have」,
    # Want itボタンが押された時には「Want」が設定されています。
   
    #@item = current_user.haves.Item.find(params[:item_id]).unhave
    #current_user.unhave(@item)
    

  end
end