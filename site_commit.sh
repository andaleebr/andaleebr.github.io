# Update website files
echo "Updating website files..."
git pull origin main

# Restart web server to apply changes
echo "Restarting web server..."
sudo systemctl restart nginx

# Check web server status
echo "Checking web server status..."
sudo systemctl status nginx

echo "Website update complete and server is live."
