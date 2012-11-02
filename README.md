# CloudInit scripts for Amazon Linux

Pick-n-mix by sending something like this as user data to your EC2 instance at startup:

    #include
    https://raw.github.com/iconara/ec2rc/master/setup.sh
    https://raw.github.com/iconara/ec2rc/master/install_basic_packages.sh
    https://raw.github.com/iconara/ec2rc/master/install_rvm.sh
    https://raw.github.com/iconara/ec2rc/master/install_rubies.sh
    https://raw.github.com/iconara/ec2rc/master/configure_tmux.sh
    https://raw.github.com/iconara/ec2rc/master/configure_sshd.sh

and mix-n-match with your own stuff too.