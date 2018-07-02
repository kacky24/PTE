#!/bin/sh

output_path=workspace/


# learn predictive word representations
# ./embedding -nodes ${output_path}cu_sample.node -users ${output_path}user_sample.node -hin ${output_path}cu_sample.hin -output ${output_path}output.emb -binary 0 -size 100 -negative 5 -samples 50 -threads 4
./embedding -nodes ${output_path}cu.node -users ${output_path}user.node -hin ${output_path}cu.hin -output ${output_path}output.emb -binary 0 -size 100 -negative 5 -samples 50 -threads 4
