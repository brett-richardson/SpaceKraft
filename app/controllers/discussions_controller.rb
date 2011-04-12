class DiscussionsController < ApplicationController

	def index
		@discussions = Discussion.all
	end


	def show
		@discussion = Discussion.find( params[:id] )
	end


	def new
		@discussion = Discussion.new
		@groups = Group.all
	end


	def edit
		@discussion = Discussion.find( params[:id] )
	end


	def create
		@discussion = Discussion.new( params[:discussion] )

		if @discussion.save
			redirect_to( @discussion, :notice => 'Discussion was successfully created.' )
		else
			render :action => "new"
		end
	end


	def update
		@discussion = Discussion.find( params[:id] )

		if @discussion.update_attributes( params[:discussion] )
			redirect_to( @discussion, :notice => 'Discussion was successfully updated.' )
		else
			render :action => "edit"
		end
	end


	def destroy
		@discussion = Discussion.find( params[:id] )
		@discussion.destroy
		redirect_to( discussions_url )
	end

end
