# otel-collector-icos-distribution

This is a build of the OpenTelemetry Collector that includes only the modules that are needed for ICOS. The main reasons for having an ICOS specific distribution are:
- remove unnedded modules to save space and reduce the memory footprint
- include modules not included in the stable official distribution
- have a build for arm and arm32 architectures

The source code of the OpenTelemetry Collector is at: https://github.com/open-telemetry/opentelemetry-collector

The Admin and User documentation for the OpenTelemetry Collector is at: https://opentelemetry.io/docs/collector/

This custom distribution has been created using the procedure documented at: https://opentelemetry.io/docs/collector/custom-collector/

# Legal
The ICOS OTEL Collector Distirbution is released under the Apache 2.0 license.
Copyright © 2022-2024 Engineering Ingegneria Informatica S.p.A. All rights reserved.

🇪🇺 This work has received funding from the European Union's HORIZON research and innovation programme under grant agreement No. 101070177.
