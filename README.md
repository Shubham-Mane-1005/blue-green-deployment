# Blue Green Deployment using Jenkins & AWS
Repository:https://github.com/Shubham-Mane-1005/blue-green-deployment

## Architecture
Developer → GitHub → Jenkins Pipeline → AWS EC2 Blue/Green → Load Balancer

## Tools Used
- AWS EC2
- Application Load Balancer
- Target Groups
- Jenkins
- Git
- Shell Script

## Features
- Zero downtime deployment
- Automated deployment using Jenkins
- Blue/Green environment switching
- Rollback support

## Pipeline Flow
1. Code push to GitHub
2. Jenkins triggers build
3. Deploy to inactive environment
4. Health check
5. Switch traffic
6. Old environment becomes standby
