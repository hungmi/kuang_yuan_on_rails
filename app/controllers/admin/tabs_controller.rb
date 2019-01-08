class Admin::TabsController < AdminController
	before_action :find_tab, except: [:index]
	def index
		@tabs = Tab.all.order(:priority)
	end

  def edit
  end

  def update
  	if @tab.update(tab_params)
  		flash[:success] = "更新成功"
  		redirect_to admin_tabs_path
  	else
  		render :edit
  	end
  end

  private

  def find_tab
  	@tab = Tab.find(params[:id])
  end

  def tab_params
  	params.require(:tab).permit(:icon, :title, :description, :priority)
  end
end