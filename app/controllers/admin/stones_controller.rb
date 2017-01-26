class Admin::StonesController < AdminController
	before_action :find_stone, only: [:edit, :update, :destroy, :show]
	def index
		@stones = Stone.order(id: :desc).all
	end

	def new
		@stone = Stone.new
	end

	def create
		if @stone = Stone.create(stone_params)
			if params[:images].present?
				params[:images].each { |image| @stone.attachments.create({image: image}) }
			else
				flash[:warning] = "請記得上傳圖片。"	
			end
			flash[:success] = "新增成功。"
			redirect_to admin_stones_path
		else
			render :new
		end
	end

	def edit
	end

	def update
		if @stone.update(stone_params)
			if params[:images].present?
				params[:images].each { |image| @stone.attachments.create({image: image}) }
			end
			flash[:success] = "更新成功。"
			redirect_to admin_stones_path
		else
			render :edit
		end
	end

	def destroy
		if @example.destroy
			flash[:success] = "已刪除。"
			redirect_to admin_stones_path
		end
	end


	private

	def find_stone
		@stone = Stone.find(params[:id])
	end

	def stone_params
		params.require(:stone).permit(:id, :zh_name, :en_name, :origin, :feature, :description, :ad_status)
	end
end