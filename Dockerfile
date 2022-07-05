#--------------------------------------------------------------------------------------------------
# Core base stage
#
# Install system packages, directory structure, user account, etc supporting both the final
# image and the intermediate Python install stages
# -------------------------------------------------------------------------------------------------
FROM library/python:3.10-slim-bullseye
LABEL maintainer="Mark Forrer<mark.forrer@lbl.gov>"

# set environment for this and all derived build stages
ENV PYTHONUNBUFFERED=1 \
    LANG=C.UTF-8

RUN set -ex \
 # install system packages needed @ runtime
 && apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get -y upgrade \
 && pip install pillow==9.1.1

ENTRYPOINT ["/bin/bash"]
