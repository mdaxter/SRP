import PackageDescription

let package = Package(
    name: "SRP",
    dependencies: [
        .Package(url: "https://github.com/mdaxter/CommonCryptoCompat.git", majorVersion: 0),
        .Package(url: "https://github.com/mdaxter/BignumGMP.git", majorVersion: 1)
    ]
)
