# Basic container image with JDK 1.6 Update 45 running on top of Ubuntu.
# Requires the directory structure files/jdk1.6.0_45 in the same directory as the Dockerfile. It then contains the given JDK files.
# TODO: Add all possible JDK versions (7, 8).
# TODO: Switch between the JDKs with prepared 'alternative' setups (scripts?) & JAVA_HOME switching.

FROM ubuntu

# Copy the content of ./files into the container to /opt
COPY ./files /opt

# Configuration of the image
RUN \
	chmod +x /opt/jdk1.6.0_45/bin/*

ENV JAVA_HOME=/opt/jdk1.6.0_45 PATH=/opt/jdk1.6.0_45/bin:$PATH

# Commands to run when container runs
CMD \
	echo "PATH: $PATH" && \
	echo "JAVA_HOME: $JAVA_HOME" && \
	java -version && \
	bash
