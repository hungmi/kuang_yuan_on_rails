class Admin::TechniquesController < AdminController
	before_action :find_technique, only: [:edit, :update, :destroy, :show]
	def index
		@techniques = Technique.all
	end

	def new
		@technique = Technique.new
	end

	def create
		@technique = Technique.new(technique_params)
		if @technique.save
			if params[:images].present?
				params[:images].each { |image| @technique.attachments.create({image: image}) }
			else
				flash[:warning] = "請記得上傳圖片。"	
			end
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
			if params[:images].present?
				params[:images].each { |image| @technique.attachments.create({image: image}) }
			end
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

	def find_technique
		@technique = Technique.find(params[:id])
	end

	def technique_params
		params.require(:technique).permit(:id, :zh_name, :en_name, :description, stone_ids: [])
	end
end