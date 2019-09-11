# jdk-docker

Basic container image with JDK running on top of Ubuntu.
Requires the directory structure *files/jdk1.6.0_45* in the same directory as the Dockerfile. It then contains the given JDK files.

TODO: 
- Add all possible JDK versions (7, 8).
- Switch between the JDKs with prepared 'alternative' setups (scripts?) & JAVA_HOME switching.
