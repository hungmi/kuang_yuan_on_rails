class Admin::ExamplesController < AdminController
	before_action :find_example, only: [:edit, :update, :destroy, :show]
	def index
		@examples = Example.order(id: :desc).all
	end

	def new
		@example = Example.new
	end

	def create
		@example = Example.new(example_params)
		if @example.save
			# link_stones
			flash[:success] = "新增成功。"
			redirect_to admin_examples_path
		else
			render :new
		end
	end

	def edit
	end

	def update
		if @example.update(example_params)
			# link_stones
			flash[:success] = "更新成功。"
			redirect_to admin_examples_path
		else
			render :edit
		end
	end

	def destroy
		if @example.destroy
			flash[:success] = "已刪除。"
			redirect_to admin_examples_path
		end
	end


	private

	def find_example
		@example = Example.find(params[:id])
	end

	def example_params
		params.require(:example).permit(:id, :zh_name, :en_name, :place, :designer, :description, :ad_status, stone_ids: [])
	end
end