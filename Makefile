signingConfig:
	scripts/create_signing_config.sh

release.apk:
	./gradlew assembleRelease
