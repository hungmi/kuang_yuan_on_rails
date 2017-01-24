class Admin::StonesController < AdminController
	before_action :find_stone, only: [:edit, :update, :destroy, :show]
	def index
		@stones = Stone.all
	end

	def new
		@stone = Stone.new
	end

	def create
		if Stone.create(stone_params)
			flash[:success] = "新增成功。"
			redirect_to admin_stones_path(@stone)
		else
			render :new
		end
	end

	def edit
	end

	def update
		if @stone.update(stone_params)
			flash[:success] = "更新成功。"
			redirect_to admin_stones_path(@stone)
		else
			render :edit
		end
	end


	private

	def find_stone
		@stone = Stone.find(params[:id])
	end

	def stone_params
		params.require(:stone).permit(:id, :name, :origin, :feature, :description)
	end
end