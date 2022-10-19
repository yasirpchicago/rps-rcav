class ApplicationController < ActionController::Base
  layout("wrapper.html.erb")

  # Add your actions below this line
  # ================================

 def homepage

  render ({ :template => "game_templates/rules.html.erb"})

 end




  def play_rock


    # redirect_to("https://www.wikepedia.org")

    # render ({ :plain => "howdy world"})

     # render ({ :html => "<h1>hello, world!</h1>".html_safe})

     render ({ :template => "game_templates/user_rock.html.erb", :layout=>"wrapper.html.erb"})



  end

  def play_paper

    @comp_move = [ "rock", "paper", "scissors"].sample 

    
    if @comp_move == "rock" 
      @outcome = "won"
     elsif @comp_move == "paper" 
      @outcome = "tied"
    elsif @comp_move == "scissors" 
      @outcome = "lost"
    end
 

    render ({ :template => "game_templates/user_paper.html.erb", :layout=>"wrapper.html.erb"})
  end

  def play_scissors

    @comp_move1 = [ "rock", "paper", "scissors"].sample 

    
    if @comp_move1 == "rock" 
      @outcome1 = "lost"
     elsif @comp_move1 == "paper" 
      @outcome1 = "won"
    elsif @comp_move1 == "scissors" 
      @outcome1 = "tied"
    end
 

    render ({ :template => "game_templates/user_scissors.html.erb", :layout=>"wrapper.html.erb"})
  end

  def rules


    render ({ :template => "game_templates/rules.html.erb"})
  end
end
