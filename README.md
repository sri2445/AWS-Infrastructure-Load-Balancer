# AWS-Infrastructure-Load-Balancer
AWS Cloud infrastructure project automating server provisioning, network load balancing, and auto-scaling configurations using Bash scripting and metric tracking.

## Project Context
This infrastructure blueprint was originally developed as an academic implementation to study cloud elasticity, load distribution frameworks, and automated system recovery metrics within high-availability networks.

## Architecture Highlights
* **Virtualization & Compute:** Provisioned virtual server environments using Ubuntu Server AMIs on AWS EC2.
* **Networking & Traffic Routing:** Configured custom subnets across multiple Availability Zones, managed access using security groups, and implemented an Internet-facing Application Load Balancer (ALB).
* **Automation:** Utilized Bash shell scripting (User Data) to handle automated software repository updates, dependency installations (Node.js, Nginx), and application deployment upon instance boot.
* **Elasticity:** Created Auto Scaling Groups governed by target tracking scaling policies tied to real-time CPU utilization.

## Repository Structure
* `setup.sh`: Bash script executed automatically during instance bootstrapping to configure the environment.
* `architecture.png`: Visual layout of the deployed cloud network.

## Implementation Steps Covered
1. **Launch Template Configuration:** Defined baseline compute specifications (t2.micro), base OS images, and custom bootstrap scripts.
2. **Network Topology Setup:** Distributed workloads across multiple distinct AWS Availability Zones for redundancy.
3. **Load Balancer Integration:** Managed routing parameters, listener ports, and backend target groups to manage incoming traffic.
4. **Stress Testing & Auto-Scaling Verification:** Executed a continuous CPU load loop script within an active instance to programmatically trigger the Auto Scaling infrastructure to spin up additional computational resources.

