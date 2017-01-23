module ApplicationHelper
	def render_scroll_class_when_needed
		current_page?(root_path)? 'scroll' : ''
	end
end
