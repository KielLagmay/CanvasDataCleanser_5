# Sources:
# https://apple.stackexchange.com/questions/20547/how-do-i-find-my-ip-address-from-the-command-line
# https://www.learnshell.org/en/Passing_Arguments_to_the_Script#:~:text=Arguments%20can%20be%20passed%20to,references%20to%20the%20current%20script.
# https://www.tecmint.com/assign-linux-command-output-to-variable/#:~:text=shell%20scripting%20purpose.-,To%20store%20the%20output%20of%20a%20command%20in%20a%20variable,command%20%5Boption%20...%5D
# https://www.cyberciti.biz/tips/how-do-i-find-out-what-shell-im-using.html
# https://stackoverflow.com/questions/40370467/anaconda-not-found-in-zsh

IP_ADDRESS=$(ipconfig getifaddr en0)
pyro5-ns -n $IP_ADDRESS