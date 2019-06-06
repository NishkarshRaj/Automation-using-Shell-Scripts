#not including any bash library reference but still will run because executable permissions given and terminal itself is bash.

# Creating a readonly variable called "Greeting"
readonly greeting="Hello"

# Creating an ordinary variable called "current_time"
current_time=`date +%X` #above tab tilted apostrophe for working with built in commands

# Substitute the output  of the command "whoami"
echo "Hi, I am $(whoami)."

# Prompt the user to provide their name
read -e -p "Who are you? " myName

# Substituting the variables and printing them
echo "${greeting:-Hi}, $myName. Now the time is $current_time"
