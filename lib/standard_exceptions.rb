require "standard_exceptions/version"

module StandardExceptions

	# messages are based on http://httpstatuses.com

	class Exception < ::StandardError
		MESSAGE = 'An error occurred that could not be identified'
		STATUS = 500

		attr_accessor :status

		# eg. 'Not Found'
		def self.human_name
			i = name.rindex('::')
      base_name = name[(i+2)..-1]
			base_name.split(/(?=[A-Z])/).join(' ')
		end

		def human_name
			self.class.human_name
		end

		def initialize(message=nil,status=nil)
			super(message || self.class::MESSAGE)
			@status = (status || self.class::STATUS)
		end
	end
end

require 'standard_exceptions/http'
require 'standard_exceptions/application'
require 'standard_exceptions/http_methods'
require 'standard_exceptions/application_methods'
