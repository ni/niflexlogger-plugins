# FlexLogger Modbus Plug-in

This plug-in functions as a Modbus master which can communicate over TCP with a Modbus slave device.

<!-- The comment below is a flag for the "Markdown All in One" Visual Studio Code plug-in which automatically updates the Table of Contents, and hides the "Table of Contents" section in the actual table of contents.--> 
<!-- omit in toc -->
## Table of Contents

- [FlexLogger Modbus Plug-in](#flexlogger-modbus-plug-in)
  - [PDK version used to build the plug-in](#pdk-version-used-to-build-the-plug-in)
  - [Supported versions of FlexLogger:](#supported-versions-of-flexlogger)
  - [Required Software for Modifying Source](#required-software-for-modifying-source)
  - [Getting Started](#getting-started)
    - [Configuring Channels](#configuring-channels)
      - [Boolean Channels](#boolean-channels)
      - [Numeric Channels](#numeric-channels)
      - [String Channels](#string-channels)
  - [Advanced Settings](#advanced-settings)
    - [Multi-register order](#multi-register-order)
    - [Signed integer representation](#signed-integer-representation)
  - [Support](#support)


## PDK version used to build the plug-in

This plug-in was built using version 26.8 (2026 Q4) of the FlexLogger Plug-in Development Kit.

## Supported versions of FlexLogger:

Supported in FlexLogger 2026 Q4 and above.

## Required Software for Modifying Source

- LabVIEW 2026 Q1 or 2026 Q3
- The following package installed from JKI VI Package Manager:
  - NI Modbus Library (version 1.2.1.42 or later)

Note: The NI Modbus Library ships with an example Modbus slave device which can be useful for testing. Run the VI locally then set the Modbus plug-in to connect to "localhost" at port 502.
- <vi.lib>\NI\Modbus Library\Examples\Modbus Slave Example.vi

## Getting Started

- Copy the **build/Modbus** folder from this repo to C:\Users\Public\Documents\National Instruments\FlexLogger\Plugins\IOPlugins.
- Launch FlexLogger and open a project
- Add the Modbus plug-in by selecting Add channels>>Plug-in>>Modbus
- Double-click the Connection Settings channel (or click the Configure gear icon on the left of the channel) to open the connection settings.
- Enter the IP address or hostname of your Modbus slave device as well as the communication port (default is 502), then click the Done button.
- The live value of the Connection Settings channel will change to "Connected" once a connection is established. A warning will be reported if there is an issue connecting. If the address is empty the plug-in will not attempt to connect to the slave device.
- Click the configure (gear) button on the right hand side of the plug-in section header.
- Use the plug-in parameters to define the number and type of channels to read from and/or write to the slave device, as well as how often the channels are updated.
- Press **OK**.
- Channels will be created for each of the channels you added in the plug-in dialog.

### Configuring Channels
- Channels can be configured by double-clicking the channel or clicking the Configure gear icon on the left of the channel.
- Each channel will have parameters for the Modbus table as well as address (or starting address)
  - The available Modbus tables will depend on the channel type and read/write direction (see below for details).
  - The address is a 0-indexed value relative to the first address of the given table. Note that some device documentation may give addresses in 1-indexed notation or with a 5-digit notation (where each table starts with a different first digit). For example, an address of 40001 is the first Holding register address which corresponds to a 0-indexed address of 0. Similarly, a Discrete Input address of 10050 would correspond to a 0-indexed address of 49 (drop the leading digit, then subtract 1).
  - By default the address will start as -1 (which is an invalid address) and no communication will be made with the slave device for this channel. Once a valid address is selected, the channel value will be read from or written to the slave device.

  #### Boolean Channels
  - Boolean input channels can read from the Discrete Inputs and Coils.
  - Boolean output channels can write to Coils.

  #### Numeric Channels
  - Numeric input channels can read from the Input Registers and Holding Registers.
  - Numeric output channels can write to Holding Registers.
  - The Modbus plug-in supports different numeric representations and sizes:
    - **8-bit (Half register)**: A 16-bit register is read and the lower (least significant) or upper (most significant) byte is interpreted as an 8-bit signed or unsigned integer. Note that writing an 8-bit value to a register will not affect the value stored in the other byte.
    - **16-bit (One register)**: A 16-bit register is read and interpreted as a 16-bit signed or unsigned integer.
    - **32-bit (Two registers)**: Two 16-bit registers are read starting at the specified address and interpreted as a 32-bit signed or unsigned integer, or as a single-precision IEEE 754 floating-point number.
    - **64-bit (Four registers)**: Four 16-bit registers are read starting at the specified address and interpreted as a 364-bit signed or unsigned integer, or as a double-precision IEEE 754 floating-point number.

  #### String Channels
  - String input channels can read from the Input Registers and Holding Registers.
  - String output channels are not supported.
  - For each string channel you define a starting address and the number of registers to read. Each 16-bit register is interpreted as two 8-bit ASCII characters, so the maximum length of the string returned will be two times the number of registers read.
  - Any null character (0x00) will be interpreted as the end of the string, so the string returned may be trimmed and less than the maximum string length.

## Advanced Settings

Some advanced options can be found in the plug-in configuration dialog (click the configure (gear) button on the right hand side of the plug-in section header).

  ### Multi-register order
  - The Modbus standard defines a big-endian byte order for 16-bit registers (the most significant byte is sent first), but there is no defined standard for values spanning two or more registers. Although it is common for these two also use big-endian order, different manufacturers may handle register and byte ordering differently. Changing this setting will affect all 32-bit and 64-bit numeric channels, as well as string input channels. 8-bit and 16-bit numeric channels will not be affected and will still use big-endian.

    | Order| 32-bit example (0x76543210) | 64-bit example (0xFEDCBA9876543210) | Description |
    |--------|------------|------------|------------|
    | Big-Endian (AB CD) | 0x7654 3210 | 0xFEDC BA98 7654 3210 | Default transmission order where the registers and bytes are ordered from most significant to least significant. |
    | Word-Swap (CD AB) | 0x3210 7654 | 0x3210 7654 BA98 FEDC | Registers are ordered from least significant to most significant, but bytes within each register are ordered from most significant to least significant. |
    | Byte-Swap (BA DC) | 0x5476 1032 | 0xDCFE 98BA 5476 1032 | Registers are ordered from most significant to least significant, but bytes within each register are ordered from least significant to most significant. |
    | Little-Endian (DC BA) | 0x1032 5476 | 0x1032 5476 98BA DCFE | Registers and bytes are ordered from least significant to most significant. |

  ### Signed integer representation
  - The Modbus standard defines each register as a 16-bit unsigned integer (0 to 65,535), but it is common for manufacturers to use these bits to represent signed integer values. While signed integers are overwhelmingly represented using two's complement encoding, it is possible that some devices may use other more uncommon encodings for their signed integer representations.

    | Encoding | +5 (16-bit) | -5 (16-bit) | Description |
    |--------|------------|------------|------------|
    | Two's Complement | 0000 0000 0000 0101 | 1111 1111 1111 1011 | The universal standard in modern computing. Negative numbers are formed by taking the ones' complement and adding 1. |
    | Offset Binary | 1000 0000 0000 0101 | 0111 1111 1111 1011 | A fixed number K is added to the signed integer to shift all values into a non-negative range. Although in general K can be any value, the plug-in implementation always uses half of the entire range (ie. K = 2^(n-1) for an n-bit integer). |
    | Sign-Magnitude | 0000 0000 0000 0101 | 1000 0000 0000 0101 | The left-most bit (most significant bit) acts as a flag for the sign (0 for positive, 1 for negative), and the remaining bits store the absolute value. There are two representations for 0 (+0 and -0). |
    | Ones' Complement | 0000 0000 0000 0101 | 1111 1111 1111 1010 | Negative numbers are created by flipping every bit (performing a bitwise NOT) of the positive counterpart. There are two representations for 0 (+0 and -0). |

## Support

Please report any problem by filing an issue in GitHub or in the FlexLogger forum:
https://forums.ni.com/t5/FlexLogger/bd-p/1021
