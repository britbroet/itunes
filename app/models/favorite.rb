class Favorite < ApplicationRecord
	#validates_format_of :artist, :with => /.../i, :on => :create, :message => 'Artist name must begin with a letter, a through z'
	#validates_format_of :artist, :with => /\A[a-z][a-z0-9_\-\s]*\z/i, :on => :create, :message => 'Artist name must begin with a letter, a through z'

	validates_format_of :artist, :with => /\A[a-z][a-z0-9_\-\s]*\Z/i, :on => :create, :message => 'Artist name must begin with a letter (a through z)'
end
