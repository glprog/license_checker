# Copyright 2019 Yoshiya Hinosawa. All rights reserved. Blue Oak license.
FROM ubuntu:latest
RUN apt-get update
RUN apt-get -y install curl git zip unzip
RUN curl -fsSL https://deno.land/x/install/install.sh | sh -s v0.33.0
ENTRYPOINT ["/root/.deno/bin/deno", "run", "--allow-read", "--allow-run", "https://deno.land/x/license_checker@v2.0.0/main.ts"]
