class HomeController < ApplicationController
  def index
    @memo = Memo.all
  end

  def new
    
  end
  
  def create
    memo = Memo.new
    memo.title = params[:title]
    memo.content = params[:content]
    memo.save
    redirect_to '/home/index'
  end

  def read
    @memo = Memo.where(id: params[:id]).first
  end

  def edit
    @memo = Memo.where(id: params[:id]).first
  end
  
  def update
    memo = Memo.where(id:params[:id]).first
    memo.title = params[:title]
    memo.content = params[:content]
    memo.save
    redirect_to '/home/read/' + memo.id.to_s
  end
  
  def delete
    memo = Memo.where(:id => params[:id]).first
    memo.destroy
    redirect_to '/home/index'
  end


  def find
  end
  
  def search
  
    # @role = params[:role]
    # @name = params[:name] 
    # @users = User.where(:role => @role)
    # @data = @users.where(users[:description].matches("%#{@name}%")).order("created_at desc").excludes(:id=> current_user.id)
    
    @title = params[:title]
    @memo = Memo.where("title like ?", "%#{@title}%")
    
    
    
  
  end
  
end
