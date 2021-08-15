# Install XSendfile
wget "https://tn123.org/mod_xsendfile/mod_xsendfile.c#hash(sha256:8e8c21ef39bbe86464d3831fd30cc4c51633f6e2e002204509e55fc7c8df9cf9)"
sudo apt-get install -y apache2-dev
sudo apxs2 -cia mod_xsendfile.c
sudo apt-get remove -y apache2-dev
sudo apt-get autoremove -y
