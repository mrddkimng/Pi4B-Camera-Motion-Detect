# Pi4B-Camera-Motion-Detect

This project requires Raspberry Pi OS (Legacy) [Debian Buster].

Below is a guide for quick setup. 

  ## Setup Pushbullet account
  
  > Register for a Pushbullet account.
  >
  > Under Settings -> Account, create an API access token.
  >
  > Record and note down API access token.

  ## Install and prepare Docker 
  
  ```
  curl -fsSL https://get.docker.com -o get-docker.sh
  sudo sh get-docker.sh
  sudo usermod -aG docker ${USER}
  sudo pip install docker-compose
  ```

  If permission denied when connecting to Docker daemon socket, ```sudo chmod 666 /var/run/docker.sock```


  ## Enable Docker access to RPi Camera

  ```
  echo "SUBSYSTEM==\"vchiq\",MODE=\"0666\"" | sudo tee /etc/udev/rules.d/99-camera.rules
  ```

  ## Clone current repository

  ```
  git clone --recursive https://github.com/mrddkimng/Pi4B-Camera-Motion-Detect.git
  ```

  ## Update ```docker-compose.yml```

  Copy and replace API access token in ```FROM_PB_KEY``` under ```services:environment:```

  ## Build and run Docker container

  ```
  cd Pi4B-Camera-Motion-Detect
  docker-compose up -d --build
  docker exec -it camera bash
  ```
  
  ## Initialise app

  Within Docker container,

  ```
  python PiCameraNotifier/main.py
  ```
  
  ## Troubleshooting

  Stop Docker

  ```
  docker-compose down
  ```

  Remove all Docker containers

  ```
  docker rm -f $(docker ps -a -q)
  ```
