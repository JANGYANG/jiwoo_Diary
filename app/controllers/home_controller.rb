class HomeController < ApplicationController
  def index
    @memo = Memo.all.order("id desc")
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
    @memo_comments = @memo.memo_comments
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
  
  
  def comment
    # new_comment = MemoComment.new
    # new_comment.writer = params[:comment_writer]
    # new_comment.content = params[:comment_content]
    # new_comment.password = params[:comment_password]
    # new_comment.memo_id = params[:memo_id]
    # new_comment.save
    MemoComment.create(:writer => params[:comment_writer], :content => params[:comment_content], :password => params[:comment_password], :memo_id => params[:memo_id])
    redirect_to '/home/read/' + params[:memo_id]
  end
  
  def comment_delete
    @comment = MemoComment.find(params[:comment_id])
  end
  
  def comment_absolutely_delete
    MemoComment.find(params[:comment_id]).destroy if params[:password] == params[:comment_password]
    
    redirect_to '/home/read/' + params[:memo_id]
    
      
  end
  
end
