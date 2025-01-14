This is designed as a system that is robust and purely functional.
Infact, there isn't even an installer process. It just creates partitions as needed. This is a provision based process compared to traditional installer based tools, which just goes to show how much we value the future and refuse to stagnate.

It's made to be perfect and usable for everyone, including grandmas and advanced system designers.

Theres a couple of key differences between traditional linux distros and this one.
1. Immutablity
The system is completely immutable, you ***cannot*** break it without deleting partitions or other extremes.
This also means an attacker cannot masquerade as an official part of the OS, and it can't corrupt itself, nor can you break it.
2. A/B Updates
Failed updates? No problem! Infact you can literally pull the power plug while updating. They download and update partitions in a either 100% working fashion, or a completely rolled back format. If an update fails, it will be automatically rolled back, if it didn't fail but it has something you don't like, you can easily rollback at any point!
A large cause of linux being an "advanced users only" thing is because of upgrade conflicts, but those simply cannot happen with A/B updates.
3. Secure
Open source, you can read the code. Infact just scroll a little up and you will see all the code
Immutable, signed from the get go. This is probably one of the only distros that is immutable and uses secure boot correctly, as in most distros it's currently a security theature.
Everything has to be signed that runs. An attacker can't just put in a virus and call it "/usr/bin/bash", nor can they do it on an application level. You still can if you want too, we don't force them to pay or anywhere near MacOS's level of insanity.
4. Modern
Windows itself is bloated with outdated features, outdated everything basically. MacOS is better, but it still isn't good on that side. Most linux distros are the most stagnant things imaginable, They decided to switch to wayland recently, a protocol existing for more than 10 years. We take advantage of features such as `systemd-sysext`, `systemd-sysupdate`, `systemd-repart`, `systemd-run0`, and a load of rust based alternatives to system components.
Infact open a PR with changing something to a better, more modern approach, and we will very likely merge it ***within the month.***
This project moves faster than even SerpentOS.


### Robust but not stable, as stable will never move forward.

# Requirements
* 40GB Of Disk Space
* x86-64 Dualcore CPU
* 4GB Ram

## GPU Support
* Integrated Graphics
* AMD GCN 3+ (Effectively all GPU's past 2015)
* NVIDIA Cards Newer than Turing are recommended, but older GPU's will still work flawlessly (Soon!)