module JetSMS
	class Configuration
		attr_accessor :host
		attr_accessor :port
		attr_accessor :usercode
		attr_accessor :password

		def initialize
			@host = 'service.jetsms.com.tr'
			@port = 8080
		end
	end

	class << self
		attr_accessor :configuration
	end

	def self.configure
		self.configuration ||= Configuration.new
		yield configuration
	end
end
