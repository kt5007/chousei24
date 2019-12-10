class ParticipatesController < ApplicationController
  
  def index
    @participate_helds = current_user.participate_helds.where("? < held_time", DateTime.now)
  end
  
  def detail
    @held = Held.find(params[:id])
  end
  
  def create
    @participate = Participate.new
    @participate.user_id = current_user.id
    @participate.held_id = params[:held_id]

    if @participate.save
      redirect_to helds_path, success: '参加登録しました'
    else 
      redirect_to helds_path, danger: '参加登録に失敗しました'
    end    
  end
  
  def destroy
    @participate = Participate.find_by(user_id: session[:user_id], held_id: params[:id])
    @participate.destroy
    redirect_to root_path, success: '参加を取り消しました'
  end
end
