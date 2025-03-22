.PHONY: build_runner clean gen install integration_test test

build_runner:
	@fvm flutter pub run build_runner watch --delete-conflicting-outputs

clean: 
	@fvm flutter clean
	@make get
	@make gen

get:
	@fvm flutter pub get

i18n: 
	@fvm flutter pub run slang

icon:
	@fvm flutter packages pub run flutter_launcher_icons:main

gen:
	@fvm flutter pub run build_runner build --delete-conflicting-outputs

test:
	@fvm flutter test

relese_apk:
	@fvm flutter build apk --release --dart-define-from-file=lib/app/configuration/production/dart_defines_production.json