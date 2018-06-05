#	fly -t concourse pipelines
#	fly -t concourse destroy-pipeline -p test-with-newman
#	fly -t concourse pipelines
fly -t concourse set-pipeline -p test-with-newman -c pipeline.yml -l credentials-ecslab.yml
fly -t concourse unpause-pipeline --pipeline test-with-newman
fly -t concourse pipelines
