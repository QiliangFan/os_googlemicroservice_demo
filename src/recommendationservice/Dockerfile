# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

FROM python:2.7-slim
COPY . .
RUN apt-get update -qy && apt-get -qy install --no-install-recommends g++ gcc && \
	rm -rf /var/lib/apt/lists/*
# show python logs as they occur
ENV PYTHONUNBUFFERED=0

# download the grpc health probe
RUN GRPC_HEALTH_PROBE_VERSION=v0.2.0 && cp grpc_health_probe-linux-amd64 /bin/grpc_health_probe &&  chmod +x /bin/grpc_health_probe


# get packages
WORKDIR /recommendationservice
COPY requirements.txt requirements.txt
RUN pip install -i https://pypi.doubanio.com/simple/ -r requirements.txt

# add files into working directory
COPY . .

# set listen port
ENV PORT "8080"
EXPOSE 8080

ENTRYPOINT ["python", "/recommendationservice/recommendation_server.py"]
