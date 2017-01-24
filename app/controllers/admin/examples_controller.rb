class Admin::ExamplesController < AdminController
	before_action :find_example, only: [:edit, :update, :destroy, :show]
	def index
		@examples = Example.all
	end

	def new
		@example = Example.new
	end

	def create
		if Example.create(example_params)
			link_stones
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
			link_stones
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

	def link_stones
		if example_params[:stone_ids].present?
			stone_ids = example_params[:stone_ids].reject(&:empty?)
			begin
				@example.stones << Stone.find(stone_ids)
			rescue ActiveRecord::RecordNotUnique => e
			end
		end
	end

	def find_example
		@example = Example.find(params[:id])
	end

	def example_params
		params.require(:example).permit(:id, :name, :place, :designer, :description)
	end
end