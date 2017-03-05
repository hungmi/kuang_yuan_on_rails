class Admin::TabsTitlesController < AdminController
	before_action :find_tabs_title, except: [:index]
	def index
		@tabs_title = TabsTitle.first
	end

  def edit
  end

  def update
  	if @tabs_title.update(tabs_title_params)
  		flash[:success] = "更新成功"
  		redirect_to admin_tabs_titles_path
  	else
  		render :edit
  	end
  end

  private

  def find_tabs_title
  	@tabs_title = TabsTitle.find(params[:id])
  end

  def tabs_title_params
  	params.require(:tabs_title).permit(:title, :description)
  end
end