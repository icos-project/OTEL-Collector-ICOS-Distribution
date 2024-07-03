#  ICOS OTEL Collector Distribution
#  Copyright © 2022-2024 Engineering Ingegneria Informatica S.p.A.
#
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#  http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.
#
#  This work has received funding from the European Union's HORIZON research 
#  and innovation programme under grant agreement No. 101070177.

FROM debian:12.4-slim

RUN apt-get update && apt-get -y install ca-certificates systemd && rm -rf /var/cache/apt/archives /var/lib/apt/lists/*

ARG CUSTOM_PLATFORM_SLUG=


COPY /otelcol-icos/otelcol-icos-$CUSTOM_PLATFORM_SLUG /otelcol-icos

ARG USER_UID=10001
USER ${USER_UID}

EXPOSE 4317 55680 55679
ENTRYPOINT ["/otelcol-icos"]
CMD ["--config", "/etc/otel/config.yaml"]
