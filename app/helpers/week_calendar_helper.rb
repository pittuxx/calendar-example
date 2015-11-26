module WeekCalendarHelper

	def format_time(time)
		time.strftime("%H:%M")
	end

	def same_hour(meeting, time)
		format_time(meeting.starts.at_beginning_of_hour) == time
	end

	def show_meeting(meeting)
		"#{format_time(meeting.starts)}\
		- #{format_time(meeting.ends)}\
		#{meeting.title}"
	end

	def meeting_or_today_class(date,time)
		date_and_time = @groups.map do |meeting|
			[
				meeting.meeting_date,
				format_time(meeting.starts.beginning_of_hour),
				format_time((meeting.ends - 1).beginning_of_hour)
			]
		end
		
		date_and_time.each do |x|
			if x[0] == date && time.between?(x[1],x[2])
				return 'class=meeting'
				break
			end
		end
		return "class=today" if date == Date.today
	end

end