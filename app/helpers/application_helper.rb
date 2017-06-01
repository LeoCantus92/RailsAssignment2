module ApplicationHelper
def teacher?
	@current_user.teacher == true
end
end
