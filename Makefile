PACKAGE_NAME=com.epohsoft.helloworld
KEY=key.p12

setup:
	scripts/create_signing_config.sh

release.apk:
	./gradlew assembleRelease

release.zip: release.apk
	zip -j release.zip app/build/outputs/apk/app-release.apk

deploy2gp:
	bundle install --path .bundle
	bundle exec supply init -k $(KEY) -p $(PACKAGE_NAME)
	bundle exec supply -k $(KEY) -p $(PACKAGE_NAME) -b app/build/outputs/apk/app-release.apk --track beta --skip_upload_metadata --skip_upload_images --skip_upload_screenshots
