module StandardExceptions::ApplicationMethods

	module_function

  def validation_failed!(message=nil)
    raise ::StandardExceptions::ValidationFailed.new(message)
  end

	def failed!(message=nil)
    raise ::StandardExceptions::Failed.new(message)
  end

end
