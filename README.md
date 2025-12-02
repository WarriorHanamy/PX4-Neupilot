<div align="center">

# PX4-NeuPilot

**PX4-Autopilot for Neural Contorl**


[![PX4](https://img.shields.io/badge/PX4-Autopilot-orange)](https://px4.io/)
[![License](https://img.shields.io/badge/License-BSD--3-green.svg)](LICENSE)

</div>

## Quick Start
### 📦 Clone the repo
```bash
  git clone https://github.com/Arclunar/PX4-Neupilot.git --recursive --depth 1
```


### 🎯 Docker Deployment
#### 1. Build the docker image
```bash
  just build-px4
```

#### 2. Then run docker
```bash
  just run-px4
```

#### 3. Start the simulation
In the docker terminal, run
```bash
  runsim.sh 2
```
to start a gazebo simulation with a quadrotor , with Micro-XRCED-DDS agent running.


<div align="center">

**如果这个项目对你有帮助，请给一个 ⭐ Star！**

Made with ❤️ by Arclunar

</div>
