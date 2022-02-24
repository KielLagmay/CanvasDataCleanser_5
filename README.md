# CanvasDataCleanser_5
A Python/Anaconda/Jupyter Notebook Application for Cleansing multiple Canvas Log JSONL Files across multiple computers.

## System Requirements
### Operating Systems
#### Windows
- Windows 10 or later (with PowerShell)
- Windows 8.1 or later (with CMD)
#### macOS
- macOS 10.14 Mojave or later (with ZSH)
- macOS 10.13 High Sierra or later (with BASH)
#### Ubuntu
- Ubuntu 20.04 or later (with BASH)

### Anaconda
- Anaconda with Python 3.6 or higher + Pyro5, pandas, import_ipynb, netifaces, jsonlines, and dateutil (installed in your desired Python virtual environment).

## How to Use
1) In your Python server code, import the following:<br>
   import import_ipynb<br>
   from DataWarehouse import openDataWarehouse
2) Then, in that same server code, use the openDataWarehouse(dirpath, outfile, dataCleanFunc) function, where dirpath is the directory of the folder containing the JSONL file(s) to be processed, outfile is the name of the output CSV file, and dataCleanFunc is a function that takes in a pandas dataframe, processes it, and outputs the resulting pandas dataframe.
3) Run the DataCleanser_Client Python code on your computer(s).
4) For the computer running the server code:<br>
   a) For Windows 10 or later users: Open the Anaconda Powershell Prompt for your desired environment, and run .\ServerStarter_WINNT.ps1. If necessary, change the current working directory using cd "&#60;current working directory&#62;".<br>
   b) For Windows 8.1 or later users: Open the Anaconda CMD Prompt for your desired environment, and run ServerStarter_WINNT.bat. If necessary, change the current working directory using cd "&#60;current working directory&#62;".<br>
   c) For macOS users: Open Terminal, type conda activate &#60;environment&#62;, then sh "&#60;current working directory&#62;/ServerStarter_MACOS.sh".<br>
   d) For Ubuntu users: Open Terminal, type conda activate &#60;environment&#62;, then sh "&#60;current working directory&#62;/ServerStarter_LINUX.sh".
5) Run your server code.
6) Enjoy! :)

## Troubleshooting
1) If a Windows PC used for running the DataCleanser_Client Python code has VirtualBox installed, please disable the VirtualBox Host-Only Adapter Ethernet to avoid server connection problems.
2) If a Mac running macOS 10.14 Mojave or later (with ZSH) is used for running the server code, and if the shell script for initializing conda (indicated by "# >>> conda initialize >>> ... # <<< conda initialize <<<") is in your .bash_profile or .bashrc files, please make sure you copy it to .zprofile or .zshrc, respectively.
3) For Mac users, this program has not yet been tested on Apple Silicon (M1) macs. But please feel free to test it if you have one and even message me if it works!
4) If running the server code gives you an import error for the "from DataWarehouse import openDataWarehouse" import statement, it may either be because the required dependencies are installed in the default (base) Python virtual environment rather than the Python virtual environment you are using to run the program, or it could also be that your server code is not in the same folder/directory as the DataWarehouse.ipynb file (and its dependencies DirectoryGenerator.py).
   
## Updates
July 15, 2021
1) Revised the System Requirements and Troubleshooting sections to indicate that macOS 10.13 High Sierra or later (with BASH) and Anaconda with Python 3.6 or higher are also supported by the CanvasDataCleanser_5 program.
2) Revised the Troubleshooting section to indicate that the MoodleDataCleanser_5 program has not yet been tested on Apple Silicon (M1) macs, and also added a statement on how to deal with errors involving the "from DataWarehouse import openDataWarehouse" import statement.
3) ServerStarter_WINNT.bat added and revised the System Requirements and How to Use sections to indicate that Windows 8.1 and later (with CMD) are now supported by the CanvasDataCleanser_5 program.
4) DataCleanser_Server.ipynb modified to print out benchmark evaluations (time taken to process all the files).
