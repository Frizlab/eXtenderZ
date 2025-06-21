// swift-tools-version:5.3
import PackageDescription


/* Binary package definition for eXtenderZ.
 * Use the xcodeproj if you want to work on the eXtenderZ project. */

let package = Package(
	name: "eXtenderZ",
	products: [
		/* Sadly the line below does not work.
		 * The idea was to have a library where SPM chooses whether to take the dynamic or static version of the target, but it fails (Xcode 12B5044c). */
//		.library(name: "eXtenderZ", targets: ["eXtenderZ-static", "eXtenderZ-dynamic"]),
		.library(name: "eXtenderZ-static", targets: ["eXtenderZ-static"]),
		.library(name: "eXtenderZ-dynamic", targets: ["eXtenderZ-dynamic"])
	],
	targets: [
		.binaryTarget(name: "eXtenderZ-static", url: "https://github.com/Frizlab/eXtenderZ/releases/download/2.1.1/eXtenderZ-static.xcframework.zip", checksum: "04cfa1636a3dc8ef9c8fe200d9512497f834dde749f2c65cea17fb857b0414c0"),
		.binaryTarget(name: "eXtenderZ-dynamic", url: "https://github.com/Frizlab/eXtenderZ/releases/download/2.1.1/eXtenderZ-dynamic.xcframework.zip", checksum: "da6bf105529fd3d9a05ba7a159458fd80b8fa629b1fc48780126a5fca84c064d")
	]
)
