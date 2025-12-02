build-px4:
    docker build -f docker/px4-simulator.dockerfile \
    --network=host \
    -t px4-gazebo-harmonic:v1 .

run-px4:
    docker run -it --gpus all \
        --rm \
        --entrypoint bash \
        --privileged --network host \
        -e DISPLAY=$DISPLAY -e QT_X11_NO_MITSHM=1 \
        -e ACCEPT_EULA=Y -e PRIVACY_CONSENT=Y \
        -v $HOME/.Xauthority:/root/.Xauthority \
        -v /tmp/.X11-unix:/tmp/.X11-unix \
        --name px4-gazebo-harmonic-tmp \
        px4-gazebo-harmonic:v1


clean-image:
    docker rmi -f px4-gazebo-harmonic:v1

enter-px4:
    docker exec -it px4-gazebo-harmonic-tmp /bin/bash

clean-px4:
    docker rm -f px4-gazebo-harmonic-tmp

df-docker:
    docker system df

help:
    @echo "Available commands:"
    @echo "  build-image   - Build the PX4 Gazebo Harmonic Docker image"
    @echo "  create-container - Create a container from the PX4 Gazebo Harmonic image"
    @echo "  run-docker     - Run a container from the PX4 Gazebo Harmonic image"
    @echo "  clean-image    - Remove the PX4 Gazebo Harmonic Docker image"
    @echo "  clean-container - Remove the PX4 Gazebo Harmonic container"
    @echo "  enter-docker   - Enter the running PX4 Gazebo Harmonic container"
    @echo "  start-docker   - Start the PX4 Gazebo Harmonic container"
    @echo "  stop-docker    - Stop the PX4 Gazebo Harmonic container"
