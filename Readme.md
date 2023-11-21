# Environment Setup for SDK and STM32Cube


## 1. Grant Permission to Scripts
To grant execution permissions to the necessary scripts, run the following command in the terminal:

```bash
chmod +x sdk_env.sh cube_env.sh install_env.sh
```

## 2. Execute the install_env.sh Script
To start the environment installation, execute the install_env.sh script

```bash
./install_env.sh
```

Detailed information about the SDK installation can be found on this page: [Install the SDK](https://wiki.st.com/stm32mpu/wiki/Getting_started/STM32MP1_boards/STM32MP157x-DK2/Develop_on_Arm%C2%AE_Cortex%C2%AE-A7/Install_the_SDK)

# 3. Verify Correct Installation 

## Starting the SDK

### Information
The SDK environment setup script must be executed once in each new working terminal where you plan to cross-compile.

Setting Up the Environment
To set up the SDK environment, navigate to the Developer Package directory and execute the environment setup script:

#### Setting up the Environment
To set up the SDK environment, navigate to the Developer Package directory and source the environment setup script:

```bash
$ cd $HOME/STM32MPU_workspace/STM32MP1-Ecosystem-v5.0.0/Developer-Package 
$ source SDK/environment-setup-cortexa7t2hf-neon-vfpv4-ostl-linux-gnueabi
```
# Environment Setup Checks

The following checks ensure that the environment is correctly set up:

- **Check the target architecture**

  ```console
  $ echo $ARCH
  arm
  ```
- **Check the toolchain binary prefix for the target tools**
    ```console
  $ echo $CROSS_COMPILE
    arm-ostl-linux-gnueabi-
  ```
- **Check the C compiler version**
    ```console
  $ $CC --version
    arm-ostl-linux-gnueabi-gcc (GCC) 12.2.0
    Copyright (C) 2022 Free Software Foundation, Inc.
    This is free software; see the source for copying conditions.  There is NO
    warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
  ```

- **Check that the SDK version is the expected one (e.g.)**
     ```console
  $ echo $OECORE_SDK_VERSION
    4.2.1-openstlinux-6.1-yocto-mickledore-mp1-v23.06.21
  ```

# 4. Open STM32Cube
- **Execute this Command to Open STM32CubeIDE**

```console
$ stm32cubeide
```

# Create a Simple Hello-World Application

follow this step [Hello-world example](https://wiki.st.com/stm32mpu/wiki/Getting_started/STM32MP1_boards/STM32MP157x-DK2/Develop_on_Arm%C2%AE_Cortex%C2%AE-A7/Create_a_simple_hello-world_application)
