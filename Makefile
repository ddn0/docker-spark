TAG=2.0.0-hadoop-2.7_v1

build: docker.io/ddn0/spark

push: docker.io/ddn0/spark
	docker push $<
	docker push $<:$(TAG)

docker.io/ddn0/spark: Dockerfile
	docker build -t $@ -f $< .
	docker tag $@ $@:$(TAG)

.PHONY:	build push
