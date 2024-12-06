# awsec2fastapi
#docker commands
						
		docker build -t fastapi-app .
		docker run -d -p 8000:8000 fastapi-app
		docker run -d --name fastapi-app<Enter number for run another container> -p 800<port number>:8000 fastapi-app
		docker ps 
		docker ps -q
		docker stop <container id>
		docker stop $(docker ps -q)
		docker-compose up -d
		docker-compose ps
		docker-compose down
		docker-compose up --scale app=5
		docker logs <container id>
		
		docker-compose.yml
			version: "3.9"
			services:
				app:
					images: fastapi-app	
					port:
						- "8000-8005:8000"
					deploye:
						replicas: 5
						
		# push images to docker hub
  
		docker tag <local-image> <registry-url>/<namespace>/<repository>:<tag>
		docker push <registry-url>/<namespace>/<repository>:<tag>
		docker tag my-image myusername/myrepo:latest
		docker push myusername/myrepo:latest
  
		#remove password file and asking again for credentials when use docker login
    rm ~/.docker/config.json

		docker tag fastapi-demo rajendrakumar488/python-fastapi-demo:fast-api-demo
		docker push rajendrakumar488/python-fastapi-demo:fast-api-demo
		docker pull rajendrakumar488/python-fastapi-demo:latest
		docker run -d -p 8010:8000 rajendrakumar488/python-fastapi-demo:latest
