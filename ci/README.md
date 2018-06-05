# CI pipeline for `test-with-newman`

Update the credentials as needed or make a copy of it.

To setup the pipeline, follow the following steps

Login to Concourse 
```
	$> fly -t concourse login -c <concourse-endpoint> 
	$> fly -t concourse login -c http://127.0.0.1:8080 
```

Add the pipeline and unpause it.
```
	$> fly -t concourse set-pipeline -p test-with-newman -c pipeline.yml 
	$> fly -t concourse unpause-pipeline --pipeline rulesengine
	$> fly -t concourse pipelines
```

