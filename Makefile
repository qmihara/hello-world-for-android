PACKAGE_NAME=com.epohsoft.helloworld
KEY=key.p12

setup:
	bundle install --path .bundle
	bundle exec supply init -k $(KEY) -p $(PACKAGE_NAME)
	scripts/create_signing_config.sh

release.apk:
	./gradlew assembleRelease

deploy: release.apk
	bundle exec supply -k $(KEY) -p $(PACKAGE_NAME) -b app/build/outputs/apk/app-release.apk --track beta --skip_upload_metadata --skip_upload_images --skip_upload_screenshots
