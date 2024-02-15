IMAGE_NAME:=gfxlabs/ats-alpine
IMAGE_TAG:=$(git describe --abbrev=0 --tags)

IMAGE_PATH:=${IMAGE_NAME}:${IMAGE_TAG}


build:
	docker build . -t ${IMAGE_PATH}

push: build
	docker push ${IMAGE_PATH}


