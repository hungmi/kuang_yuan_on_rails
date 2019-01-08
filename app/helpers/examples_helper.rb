module ExamplesHelper
	def render_wrapper_direction(num)
		case num % 4
		when 0
			return "event-left fadeInLeft"
		when 1
			return "event-right fadeInRight"
		when 2
			return "event-left event-left1 fadeInRight"
		when 3
			return "event-right event-right1 fadeInLeft"
		end
	end

	def render_content_direction(num)
		case num % 4
		when 0
			return "event-top"
		when 1
			return "event-top event-top1"
		when 2
			return "event-top event-t"
		when 3
			return "event-top event-t1"
		end
	end
end
