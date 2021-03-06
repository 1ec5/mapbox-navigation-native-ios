#!/usr/bin/env sh
set -euo pipefail

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
ROOT_DIR="${DIR}/.."
pushd "${ROOT_DIR}/Tests/SPM"

xcodegen generate
xcodebuild -project SPMTest.xcodeproj -scheme SPMTest -destination 'platform=iOS Simulator,name=iPhone 11,OS=latest' build

popd
