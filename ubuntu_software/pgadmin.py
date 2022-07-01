import os


os.system("sudo apt update")
os.system(
    'sudo sh -c echo "deb https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list && apt update'
)
os.system("sudo apt install pgadmin4-desktop")
