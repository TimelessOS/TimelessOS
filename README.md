# TimelessOS

TimelessOS is a simple, robust Operating System based on the principal that it **just works**.

* Robust: Cannot, Will not, Shall not break
* Simple: It's just like what you're used to, with a very small learning curve
* Immutable: You can't break it, no matter how much little Timmy tries
* Secure: Stay Safe while browsing the Internet

## Status

Early alpha. **Not recommended for general use.**

## Building from source

- Pull the repository.
- Generate secureboot keys via `mkosi genkey`.
- Build the image via mkosi using `mkosi --force`.
- OPTIONAL: Update to the build using `mkosi sysupdate`. In the case the build failed or was faulty, rollback is possible via holding down ESC during boot to get to the bootloader.

## Installation

CAUTION: This is not ready for general use. Make sure you have another drive ready with another OS incase of OS failure.

> Make sure that Secure Boot is in setup mode (You can change this in UEFI Firmware Interface) before starting installation!

> We are aware of a bug affecting firstboot that affects the keyboard. We recommend setting passwords to a single letter and changing them after firstboot.

### ISO Installation

Burn the [ISO](https://eaterminer.tinoplay.eu/updates/TimelessOS_202502.raw) directly to the intended drive.
Be careful not to burn to the wrong drive, and remember to backup your data.

Booting via this drive will present you with firstboot, complete the instructions onscreen.


### Replicated Installation (Recommended)

> Make sure to back up all important data on the target drive before running this command.

Open a terminal on the host system with the intended target drive attached, and run `systemd-repart --defer-partitions=swap,root /dev/<drive>` and review onscreen the changes proposed. If you are fine with these changes, run with  the `--dry-run=no` flag. This will "clone" the current installations system partitions, so make sure you're on the latest update.

Booting via this drive will present you with firstboot, complete the instructions onscreen.
