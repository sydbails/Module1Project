require 'pry'
require_relative 'models/user'
require_relative 'models/joke'
require_relative 'models/favorite'


    def title_banner
        "       
              ______   __                            __                                __      __                  
              /      \ /  |                          /  |                              /  \    /  |                 
             /$$$$$$  |$$ |____   __    __   _______ $$ |   __                         $$  \  /$$/______   __    __ 
             $$ |  $$/ $$      \ /  |  /  | /       |$$ |  /  |                         $$  \/$$//      \ /  |  /  |
             $$ |      $$$$$$$  |$$ |  $$ |/$$$$$$$/ $$ |_/$$/                           $$  $$//$$$$$$  |$$ |  $$ |
             $$ |   __ $$ |  $$ |$$ |  $$ |$$ |      $$   $$<                             $$$$/ $$ |  $$ |$$ |  $$ |
             $$ \__/  | $$ |  $$ |$$ \__ $$ |$$ \_____   $$$$$$  \        __  __  __           $$ | $$ \ __$$ |$$ \__ $$ |
             $$    $$/ $$ |  $$ |$$    $$/ $$       |$$ | $$  |      /  |/  |/  |          $$ | $$    $$/ $$    $$/ 
              $$$$$$/  $$/   $$/  $$$$$$/   $$$$$$$/ $$/   $$/       $$/ $$/ $$/           $$/   $$$$$$/   $$$$$$/  
        
        "
        end
        
        def graphic_banner
        puts "
                                `                                                                       `
                                `                                                                       `
                                `                                                            
                                `                    +soo+:: +         +oooo+                           `
                                `                     +++++o+-:+so   oso++o+s+               
                                `              oos+          o-.-+ho+yoossssyos              
                                `              o  yh+        o : :+ oyysos +sho              
                                `              s   ymso       ++o++::::soo :o+soso++                    `
                                `              o+  sNNNms++       oo+  sso  +osoo:::++       
                                `               +o+ hNNNmddhsso+     yyyyo  :ssso::::++                 `
                                `                 oo++mNmdddddmddy++ysos+::::yssyo+::: o+               `
                                `                  o  yNmdddddddddddyo+:::::+o:- os+  + o+              `
                                `                   ++ohddhhdddddddddhds+ ooos:---.... :o+   
                                `                            ooydddddddmmyos+syyyy   +++                `
                                `                               +hdddddddmddyohys                       `
                                `                                 sdddddddddmhhy                        `
                                `                                   shddddddddddho                      `
                                `                                      +osddddddddy+                    `
                                `                                          yddddddddy                   `
                                `                                            ohddddddy                  `
                                `                                      ++ +osyhmmdddddh                 `
                                `                                   +NNNddddddddddddddh                 `
                                `                                   +mNddddddddddddys+       
                                `                                   yNNddddhysoo+                       `
                                `                                   dNNmso                              `
                                `                                   yNNo                                `
                                `                                    hy                                 `                                          `
        "
        end

def welcome
    print "\e[2J\e[f"

    puts banner2
    puts banner

    puts ""
    puts "Welcome to Chuck You - a funny machine that exists purely to give you the best Chuck Norris jokes the world has to offer. Chuck himself is proud. "
    puts ""
    puts "Enter a username to get started, or type 'exit' to exit!"
    puts ""
    user_input = gets.chomp
        if user_input == "exit"
            exit
        else
            username_input = user_input
        end 
    puts ""
    puts "Enter your first name."
    user_input = gets.chomp
        if user_input == "exit"
            exit
        else 
            first_name_input = user_input
        end
        user = User.find_or_create_user_query(username_input, first_name_input)
        puts ""
        puts "Thanks #{first_name_input}!"
        puts ""
        main_menu(user)
end

