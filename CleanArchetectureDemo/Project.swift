import ProjectDescription

let project = Project(
    name: "CleanArchetectureDemo",
    targets: [
        .target(
            name: "CleanArchetectureDemo",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.CleanArchetectureDemo",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["CleanArchetectureDemo/Sources/**"],
            resources: ["CleanArchetectureDemo/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "CleanArchetectureDemoTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.CleanArchetectureDemoTests",
            infoPlist: .default,
            sources: ["CleanArchetectureDemo/Tests/**"],
            resources: [],
            dependencies: [.target(name: "CleanArchetectureDemo")]
        ),
    ]
)
