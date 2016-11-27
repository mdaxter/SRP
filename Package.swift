import PackageDescription

let package = Package(
    name: "SRP",
    dependencies: [
        .Package(url: "https://github.com/krzyzanowskim/CryptoSwift.git", majorVersion: 0),
	.Package(url: "https://github.com/mdaxter/Swift-Big-Integer.git", majorVersion: 1)
    ]
)
