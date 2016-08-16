module JetSMS
	class SMS
		def self.send_sms(recipient, message_text, opts={})
			valid_options = opts.only(:from, :start_date, :stop_date, :turkish)
			valid_options.merge!(start_date: JetSMS::DATE.now) unless valid_options[:start_date]
			valid_options.merge!(stop_date: JetSMS::DATE.n_hour_from_now(1)) unless valid_options[:stop_date]

			body = JetSMS::XmlBody.send_sms_body(recipient, message_text, valid_options)

			response = send_request(body)

			return parse_response(response)
		end

		def sms_status
			'OK status'
		end

		def check_balance
			'OK Balance'
		end

		def initialize(auth_options={})
			@auth_options = auth_options
		end

		def self.send_request(body)
			header = {
				"Content-Type" => "text/xml; charset=utf-8", 
				"Content-Length" => body.bytesize.to_s, 
				"Accept" => "*/*" 
			}

			request = Net::HTTP::Post.new('/SMS-Web8/xmlsms', header)
			request.body = body
			response = Net::HTTP.new(JetSMS.configuration.host, JetSMS.configuration.port).start {|http| http.request(request) }

			return response.body
		end

		def self.parse_response(body)
			body.split(" ")
		end
	end
end