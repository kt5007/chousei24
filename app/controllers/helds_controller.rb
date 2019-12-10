class HeldsController < ApplicationController
  
  def index
    @helds = Held.where(user_id: session[:user_id]).where("? < held_time", DateTime.now)
  end
  
  def new
    @held = Held.new
  end
  
  def show
    @held = Held.find(params[:id])
  end
  
  def create
    @held = current_user.helds.new(held_params)
    if @held.save
      redirect_to helds_path, success: 'イベントを作成できました'
    else
      flash.now[:danger] = "イベントの作成に失敗しました"
      render :new
    end
  end
  
  def edit
     @held = Held.find(params[:id])
  end
  
  def destroy
    @held = Held.find(params[:id])
    @held.destroy
    redirect_to helds_path, success: 'イベントが削除されました'
  end
  
  def update
    @held = Held.find(params[:id])
    if @held.update_attributes(held_params)
      # 更新に成功したときの処理
      redirect_to helds_path, success: '更新されました'
    else
      render 'edit'
    end
  end
  
  
  def held_params
    params.require(:held).permit(:image, :description, :event_name, :held_time, :address, :helder)
  end  
  
end
