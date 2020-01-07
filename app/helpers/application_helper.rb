module ApplicationHelper
	def render_scroll_class_when_needed
		current_page?(root_path)? 'scroll' : ''
	end

	def render_active(path)
		current_page?(path) ? "active" : ""
	end
end
