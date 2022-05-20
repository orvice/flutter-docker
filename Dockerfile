FROM androidsdk/android-30

# config flutter build envrioument
ENV FLUTTER_VERSION 3.0.1
ENV FLUTTER_HOME=/opt/flutter
ENV FLUTTER_ROOT=$FLUTTER_HOME

ENV PATH ${PATH}:${FLUTTER_HOME}/bin:${FLUTTER_HOME}/bin/cache/dart-sdk/bin

ENV FLUTTER_CHANNEL=stable
ENV FLUTTER_URL="https://storage.googleapis.com/flutter_infra_release/releases/$FLUTTER_CHANNEL/linux/flutter_linux_$FLUTTER_VERSION-$FLUTTER_CHANNEL.tar.xz"
RUN wget --no-verbose --output-document=flutter.tar.xz "$FLUTTER_URL" && \
	mkdir -p /opt/flutter && \
	tar -xf flutter.tar.xz -C ${FLUTTER_HOME} --strip-components=1 && \
	rm -f flutter.tar.xz
