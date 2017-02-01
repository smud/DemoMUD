all: build

test:
	swift test

build:
	swift build
#	swift build -Xcc -fblocks
#	swift build -Xswiftc -j1

rebuild: clean build

clean:
	swift package clean

distclean:
	swift build --clean dist

edit-all:
	swift package fetch
	swift package edit --branch tmp CollectionUtils
	swift package edit --branch tmp ConfigFile
	swift package edit --branch tmp ConsolePlugin
	swift package edit --branch tmp ScannerUtils
	swift package edit --branch tmp Smud
	swift package edit --branch tmp StringUtils
	swift package edit --branch tmp TextUserInterface
	swift package edit --branch tmp Utils

checkout-master-all:
	git -C Packages/CollectionUtils checkout master
	git -C Packages/ConfigFile checkout master
	git -C Packages/ConsolePlugin checkout master
	git -C Packages/ScannerUtils checkout master
	git -C Packages/Smud checkout master
	git -C Packages/StringUtils checkout master
	git -C Packages/TextUserInterface checkout master
	git -C Packages/Utils checkout master

tags:
	ctags -R ./ ../swift-corelibs-foundation/ ../swift-corelibs-libdispatch/

xcodeproj:
	swift package generate-xcodeproj

.PHONY: all build rebuild clean distclean pull-master tags xcodeproj
