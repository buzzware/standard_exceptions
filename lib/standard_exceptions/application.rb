# Application Errors
module StandardExceptions::Application

	class Failed < UnprocessableEntity
		MESSAGE = 'The requested operation was not successful.'
	 end

	class ValidationFailed < Failed
		MESSAGE = 'The requested operation was not successful due to validation errors.'
	end

end
