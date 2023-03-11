.PHONY: dependencies
dependencies:
	fvm flutter pub get

.PHONY: analyze
analyze:
	fvm flutter analyze

.PHONY: format 
format:
	fvm flutter format lib/

.PHONY: format-analyze
format-analyze:
	fvm flutter format --dry-run lib/
	fvm flutter analyze

.PHONY: build-runner
build-runner:
	fvm flutter packages pub run build_runner build --delete-conflicting-outputs

.PHONY: run-dev
run-dev:
	fvm flutter run --dart-define=FLAVOR=dev --target lib/main.dart

.PHONY: run-staging
run-staging:
	fvm flutter run --dart-define=FLAVOR=staging --target lib/main.dart

.PHONY: run-prd
run-prd:
	fvm flutter run --release --dart-define=FLAVOR=prod --target lib/main.dart

.PHONY: build-android-dev
build-android-dev:
	fvm flutter build apk --dart-define=FLAVOR=dev --target lib/main.dart

.PHONY: build-android-staging
build-android-staging:
	fvm flutter build apk --dart-define=FLAVOR=staging --target lib/main.dart

.PHONY: build-android-prd
build-android-prd:
	fvm flutter build apk --release --dart-define=FLAVOR=prod --target lib/main.dart

.PHONY: build-ios-dev
build-ios-dev:
	fvm flutter build ios --no-codesign --dart-define=FLAVOR=dev --target lib/main.dart

.PHONY: build-ios-staging
build-ios-staging:
	fvm flutter build ios --no-codesign --dart-define=FLAVOR=staging --target lib/main.dart

.PHONY: build-ios-prd
build-ios-prd:
	fvm flutter build ios --release --no-codesign --dart-define=FLAVOR=prod --target lib/main.dart

.PHONY: unit-test
unit-test:
	fvm flutter test --coverage --coverage-path=./coverage/lcov.info

.PHONY: coverage
coverage:
	fvm flutter test --coverage --coverage-path=./coverage/lcov.info && genhtml coverage/lcov.info -o coverage/html

.PHONY: codecov
codecov:
	./scripts/codecov.sh ${CODECOV_TOKEN}

