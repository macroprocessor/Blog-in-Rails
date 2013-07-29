class Post < ActiveRecord::Base

=begin
	validates :title, :content, :presence => true
	validates :title, :length => { :minimum => 2}
	validates :title, :uniqueness => true
=end
end
