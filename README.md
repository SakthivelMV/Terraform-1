1. Create the following files in folder
main.tf
variables.tf
outputs.tf
user_data.sh

2. Define AWS Resources in main.tf
3. Define Variables in variables.tf
4. Define output in outputs.tf -> This helps you easily access the deployed instance
5. Create the Startup Script in user_data.sh -> which is a User Data Script
6. Initialize Terraform
7. Apply the Terraform configuration
8. After deployment, Terraform will show the public IP
9. Open the browser and visit the public IP to see the outputs
10. Create a proper .gitignore to avoid oversized terraform files
11. git rm -r --cached .terraform
12. git add .gitignore
git commit -m "Cleaned up .terraform and added .gitignore"
git push origin main

#To avoid failure of run
npm install -g pm2
pm2 start index.js --name express-app
pm2 startup
pm2 save
pm2 status
pm2 logs express-app
