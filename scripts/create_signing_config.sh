#!/bin/sh

cat <<EOS > signingConfigRelease.gradle2
signingConfig {
    release {
        storeFile file("helloworld.jks")
        storePassword "$STORE_PASSWORD"
        keyAlias "helloworld"
        keyPassword "$KEY_PASSWORD"
    }
}
EOS
