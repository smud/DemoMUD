import PackageDescription

let package = Package(
    name: "DemoMUD",
    dependencies: [
        .Package(url: "https://github.com/smud/Smud.git", majorVersion: 0),
        .Package(url: "https://github.com/smud/ConsolePlugin.git", majorVersion: 0),
    ]
)
