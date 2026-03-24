
USERNAME=tahir
PASSWORD=YOUR_PASSWORD
sudo adduser --disabled-password --gecos "" $USERNAME
echo "$USERNAME:$PASSWORD" | sudo chpasswd

mkdir -p /home/$USERNAME/.ssh

cp /root/.ssh/authorized_keys /home/$USERNAME/.ssh/authorized_keys

chown -R $USERNAME:$USERNAME /home/$USERNAME/.ssh/

usermod -aG sudo $USERNAME

systemctl restart ssh
