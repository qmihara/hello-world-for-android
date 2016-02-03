#!/bin/sh

cat <<EOS > signingConfigRelease.gradle
signingConfigs {
    release {
        storeFile file("helloworld.jks")
        storePassword "$STORE_PASSWORD"
        keyAlias "helloworld"
        keyPassword "$KEY_PASSWORD"
    }
}
EOS
