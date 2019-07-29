class View
	attr_accessor :author, :content
	def create_gossip
		puts "Create your gossip here"
		print " >>  "
		@author = gets.chomp()
		puts "Write down the action done by your gossip"
		puts " What does your gossip do?"
		print " >>  "
		@content = gets.chomp()
		puts "check the status of your gossip in the menu."
    	puts "Thank you for playing in my game of gossip"
    	return params = {content: @content, author: @author}
		
	end
	def index_gossips
		Gossip.all
		
	end
end