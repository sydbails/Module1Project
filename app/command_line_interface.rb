require 'pry'
require_relative 'models/user'
require_relative 'models/joke'
require_relative 'models/favorite'


    def banner
        "       
        `````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````
        `     ______   __                            __                                __      __                               `
        `         /      \ /  |                          /  |                              /  \    /  |                             `
        `    /$$$$$$  |$$ |____   __    __   _______ $$ |   __                         $$  \  /$$/______   __    __             `
        `    $$ |  $$/ $$      \ /  |  /  | /       |$$ |  /  |                         $$  \/$$//      \ /  |  /  |            `
        `    $$ |      $$$$$$$  |$$ |  $$ |/$$$$$$$/ $$ |_/$$/                           $$  $$//$$$$$$  |$$ |  $$ |            `
        `    $$ |   __ $$ |  $$ |$$ |  $$ |$$ |      $$   $$<                             $$$$/ $$ |  $$ |$$ |  $$ |            `
        `    $$ \__/  | $$ |  $$ |$$ \__ $$ |$$ \_____   $$$$$$  \        __  __  __           $$ | $$ \ __$$ |$$ \__ $$ |          `
        `    $$    $$/ $$ |  $$ |$$    $$/ $$       |$$ | $$  |      /  |/  |/  |          $$ | $$    $$/ $$    $$/             `
        `     $$$$$$/  $$/   $$/  $$$$$$/   $$$$$$$/ $$/   $$/       $$/ $$/ $$/           $$/   $$$$$$/   $$$$$$/              `
        
        `````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````
        
        "
        end
        
        def banner
        puts "
        1001`1001`1001`1001`1001`1001`1001`1001`1001`1001`1001`1001`10011001`1001`1001`1001`1001`1001`1001`1001`1001`1001`1001`1001`1001
        1001`                                                                                                                      `1001
        1001`                                                                                                                      `1001
        1001`                                                                                                                      `1001  
        1001`                                                     +soo+:: +         +oooo+                                         `1001
        1001`                                                      +++++o+-:+so   oso++o+s+                                        `1001 
        1001`                                               oos+          o-.-+ho+yoossssyos                                       `1001  
        1001`                                               o  yh+        o : :+ oyysos +sho                                       `1001  
        1001`                                               s   ymso       ++o++::::soo :o+soso++                                  `1001
        1001`                                               o+  sNNNms++       oo+  sso  +osoo:::++                                `1001  
        1001`                                                +o+ hNNNmddhsso+     yyyyo  :ssso::::++                               `1001
        1001`                                                  oo++mNmdddddmddy++ysos+::::yssyo+::: o+                             `1001
        1001`                                                   o  yNmdddddddddddyo+:::::+o:- os+  + o+                            `1001
        1001`                                                    ++ohddhhdddddddddhds+ ooos:---.... :o+                            `1001
        1001`                                                             ooydddddddmmyos+syyyy   +++                              `1001
        1001`                                                                +hdddddddmddyohys                                     `1001
        1001`                                                                  sdddddddddmhhy                                      `1001
        1001`                                                                    shddddddddddho                                    `1001
        1001`                                                                       +osddddddddy+                                  `1001
        1001`                                                                           yddddddddy                                 `1001
        1001`                                                                             ohddddddy                                `1001
        1001`                                                                       ++ +osyhmmdddddh                               `1001
        1001`                                                                    +NNNddddddddddddddh                               `1001
        1001`                                                                    +mNddddddddddddys+                                `1001      
        1001`                                                                    yNNddddhysoo+                                     `1001
        1001`                                                                    dNNmso                                            `1001
        1001`                                                                    yNNo                                              `1001
        1001`                                                                    yNNo                                              `1001
        1001`                                                                     hy                                               `1001 
        1001`                                                                                                                      `1001
        1001`     ______   __                            __                                __      __                              `1001
        1001`         /      \ /  |                          /  |                              /  \    /  |                          `1001
        1001`    /$$$$$$  |$$ |____   __    __   _______ $$ |   __                         $$  \  /$$/______   __    __             `1001
        1001`    $$ |  $$/ $$      \ /  |  /  | /       |$$ |  /  |                         $$  \/$$//      \ /  |  /  |              `1001
        1001`    $$ |      $$$$$$$  |$$ |  $$ |/$$$$$$$/ $$ |_/$$/                           $$  $$//$$$$$$  |$$ |  $$ |           `1001
        1001`    $$ |   __ $$ |  $$ |$$ |  $$ |$$ |      $$   $$<                             $$$$/ $$ |  $$ |$$ |  $$ |           `1001
        1001`    $$ \__/  | $$ |  $$ |$$ \__ $$ |$$ \_____   $$$$$$  \        __  __  __           $$ | $$ \ __$$ |$$ \__ $$ |           `1001
        1001`    $$    $$/ $$ |  $$ |$$    $$/ $$       |$$ | $$  |      /  |/  |/  |          $$ | $$    $$/ $$    $$/            `1001
        1001`     $$$$$$/  $$/   $$/  $$$$$$/   $$$$$$$/ $$/   $$/       $$/ $$/ $$/           $$/   $$$$$$/   $$$$$$/             `1001
        1001`                                                                                                                      `1001
        1001`                                                                                                                      `1001
        1001`                                                                                                                      `1001
        1001`1001`1001`1001`1001`1001`1001`1001`1001`1001`1001`1001`10011001`1001`1001`1001`1001`1001`1001`1001`1001`1001`1001`1001`1001
        
"
        end

def welcome
    print "\e[2J\e[f"

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
    puts ""
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

