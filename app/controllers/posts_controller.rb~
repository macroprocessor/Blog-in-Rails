class PostsController < ApplicationController
	def index
		@posts = Post.all
	end
	
	def show
		@posted = Post.find(params[:id])#url'nin sonundaki id nolu postu gösterir.
	end
	
	def new
	#viewe boş bir post nesnesi göndermek için @post isminde bir instance variable tanımladık...
		@posts = Post.new		
		
	end
	
	def create
		@post = Post.new(params[:posts])
		@post.save
		if @post.save
			redirect_to posts_path, :notice => "Your post was saved"
		else
			render "new"
		end
	end
	
	def edit
		@post = Post.find(params[:id])
	end 
	
	def update
		@post = Post.find(params[:id])
		
		if @post.update_attributes(:id => params[:id])
			redirect_to posts_path, :notice => "Your post has been updated"
		
		else
			render "edit"
		end
	end
	
	def destroy
		@post = Post.find(params[:id])
		@post.destroy
		redirect_to posts_path, :notice => "Your post has been succesfully deleted "
	end
end
