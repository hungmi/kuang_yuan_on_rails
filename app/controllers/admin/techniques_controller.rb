class Admin::TechniquesController < AdminController
	before_action :find_technique, only: [:edit, :update, :destroy, :show]
	def index
		@techniques = Technique.all
	end

	def new
		@technique = Technique.new
	end

	def create
		if @technique = Technique.create(technique_params)
			link_stones
			flash[:success] = "新增成功。"
			redirect_to admin_techniques_path
		else
			render :new
		end
	end

	def edit
	end

	def update
		if @technique.update(technique_params)
			link_stones
			flash[:success] = "更新成功。"
			redirect_to admin_techniques_path
		else
			render :edit
		end
	end

	def destroy
		if @technique.destroy
			flash[:success] = "已刪除。"
			redirect_to admin_techniques_path
		end
	end


	private

	def link_stones
		if technique_params[:stone_ids].present?
			stone_ids = technique_params[:stone_ids].reject(&:empty?)
			begin
				@technique.stones << Stone.find(stone_ids)
			rescue ActiveRecord::RecordNotUnique => e
			end
		end
	end

	def find_technique
		@technique = Technique.find(params[:id])
	end

	def technique_params
		params.require(:technique).permit(:id, :name, :description, stone_ids: [])
	end
end