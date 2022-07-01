import os


os.system(
    'sudo sh -c echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
)

os.system(
    "wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -"
)
os.system("sudo apt-get update")
os.system("sudo apt-get -y install postgresql")
