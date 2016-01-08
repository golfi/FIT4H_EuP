class ProjectsController < ApplicationController

	def index ##############################
		@projects = Project.all
	end

	def show
		@project = Project.find(params[:id])
	end

	def edit
		@project  = Project.find(params[:id])		
	end

	def update
		@project = Project.find(params[:id])
		if @project.update(project_params)
			flash[:notice] = "gut gespeichert ist halb gewonnen."
			redirect_to project_path(@project.id)
		else
			render "edit"
		end
	end

	def new
		@project =  Project.new
	end

	def create
		@project = Project.new(project_params)
		if @project.save
			flash[:notice] = "gut gespeichert ist halb gewonnen."
			redirect_to projects_path
		else
			render "new"
		end
	end

	def destroy
		@project = Project.find(params[:id])
		@project.destroy
		redirect_to projects_path		
	end

	private
		def project_params
			permitted_params = params.require(:project).permit(:title, :description, :start_date)
		end

end
