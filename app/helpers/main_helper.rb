module MainHelper
	def verify_input(artist)
		#TO DO: SANITIZE INPUT
		# below: replace anything that's not a number or letter with nothing (delete) --- /i means any capitalization
		puts 'replaced with: ' + artist.gsub(/[^0-9a-z_\-\s]/i, '')
		return artist.gsub(/[^0-9a-z_\-\s]/i, '')
	end
end
