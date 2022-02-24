# Sources:
# https://stackoverflow.com/questions/1469849/how-to-split-one-string-into-multiple-strings-separated-by-at-least-one-space-in
# https://zoomadmin.com/HowToInstall/UbuntuPackage/pyro4
# https://unix.stackexchange.com/questions/8518/how-to-get-my-own-ip-address-and-save-it-to-a-variable-in-a-shell-script

ipadds=$(hostname -I)
pyro5-ns -n $ipadds
