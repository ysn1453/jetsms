class Hash
	def only(*keys)
		inject( {} ) do |new_hash, (key, value)|
			new_hash[key] = value if keys.include?(key)
			new_hash
		end
	end
end