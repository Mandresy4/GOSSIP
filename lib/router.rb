require 'controller'

class Router
	#On veut qu'un "Router.new" lancé par app.rb, crée automatique une instance "@controller"
	def initialize
		@controller = Controller.new
	end
	#rappelle-toi que l'on fait "Router.new.perform" dans app.rb => après initialize, on définit donc perform.
	def perform
		puts "_________________________________________"
    puts "|                                       |"
    puts "|          THE GOSSIP PROJECT           |"
    puts "|          //INSTRUCTION//              |"
    puts "|  CHOOSE THE ACTION YOU WANT IN        |"
    puts "|          THE MENU PRESENTED           |"
    puts "|                                       |"
    puts "|                                       |"
    puts "|                                       |"
    puts "|                                       |"                                 
    puts "|       WISH YOU WELL PLAY              |"
    puts "_________________________________________"

    while true
    	puts "* Hello, what do you want to do?"
      puts "____________||________________"
      puts "Menu:"
      puts "* 1. I want to create a gossip"
      puts "* 2. I want to display the Gossips"
      puts " 	3. I want to leave the app"
      puts "____________||________________"
      params = gets.chomp.to_i #on attend le choix de l'utilisateur

      case params #en fonction du choix
      when 1
      	puts "You have chosen to create a gossip"
      	@controller.create_gossip
      when 2
        puts "You have chosen to display the states of your gossips" 
        @controller.index_gossips
      when 3
        puts "See you soon !"
         break #Ce "break" permet de sortir de la boucle while. C'est même la seule façon d'en sortir.
       else
       	 puts "This choice does not exist, please try again" #Si l'utilisateur saisit une entrée non prévue, il retourne au début du "while true". 
        #C'est pour ça que la boucle est infinie: potentiellement, il peut se gourer jusqu'à la fin des temps :)
      end

    end
	end

end