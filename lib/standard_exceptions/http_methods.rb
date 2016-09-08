module StandardExceptions::HttpMethods

	module_function

	# HTTP Status Errors

	def unauthorized!(message=nil)
    raise ::StandardExceptions::Unauthorized.new(message)
  end

  def forbidden!(message=nil)
    raise ::StandardExceptions::Forbidden.new(message)
  end

	def not_found!(message=nil)
		raise ::StandardExceptions::NotFound.new(message)
  end

	def internal_server_error!(message=nil)
    raise ::StandardExceptions::InternalServerError.new(message)
  end

	# Application Errors
end
