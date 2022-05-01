class User::PostsController < UserController 

	def create 
		f_params = form_params.merge(user: current_user)

		@post = Post.new(f_params)

		if @post.save 
			flash[:notice] = "Postagem enviada com sucesso"
			redirect_back fallback_location: user_profile_path 
		else 
			render "user/profile/show"
		end
	end

	def form_params 
		params.require(:post).permit(:body)
	end

end