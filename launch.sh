#!/bin/bash

echo "boom ca lance tout"
#!/bin/bash

# List of directories
directories=("jenkins" "portainer" "nginx-proxy-manager")

# Loop through each directory and run docker-compose up --build
for dir in "${directories[@]}"; do
  if [ -d "$dir" ]; then
    echo "Changing to directory: $dir"
    cd "$dir" || exit
    echo "Running docker-compose up --build in $dir"
    docker compose up --build -d
    echo "Completed docker-compose up --build in $dir"
    cd "../"
  else
    echo "Directory $dir does not exist"
  fi
done

echo "Script completed."
