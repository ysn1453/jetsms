module JetSMS
	class XmlBody
		def self.send_sms_body(recipient, message_text, valid_options)
			"<?xml version='1.0' #{ "encoding='iso-8859-9'" if valid_options[:turkish] } ?><message-context type='smmgsd'><username>#{JetSMS.configuration.usercode}</username><password>#{JetSMS.configuration.password}</password><outbox-name>#{valid_options[:from]}</outbox-name><start-date></start-date><expire-date></expire-date><text>#{message_text}</text><gsmnos>#{recipient}</gsmnos></message-context>"
		end
	end
end