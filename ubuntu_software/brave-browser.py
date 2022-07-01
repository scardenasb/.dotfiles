import os


os.system("sudo apt update")
os.system("sudo apt install -y apt-transport-https curl")
os.system(
    "sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg"
)
os.system(
    'echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list'
)
os.system("sudo apt update")
os.system("sudo apt install brave-browser")
