# Flutter command completion for Fish shell

# Main flutter commands
complete -c flutter -f -n __fish_use_subcommand -a analyze -d "Analyze the project's Dart code"
complete -c flutter -f -n __fish_use_subcommand -a assemble -d "Assemble and build resources"
complete -c flutter -f -n __fish_use_subcommand -a build -d "Build an executable app"
complete -c flutter -f -n __fish_use_subcommand -a channel -d "List or switch Flutter channels"
complete -c flutter -f -n __fish_use_subcommand -a clean -d "Delete the build/ directory"
complete -c flutter -f -n __fish_use_subcommand -a config -d "Configure Flutter settings"
complete -c flutter -f -n __fish_use_subcommand -a create -d "Create a new Flutter project"
complete -c flutter -f -n __fish_use_subcommand -a devices -d "List all connected devices"
complete -c flutter -f -n __fish_use_subcommand -a doctor -d "Show information about the installed tooling"
complete -c flutter -f -n __fish_use_subcommand -a downgrade -d "Downgrade Flutter to the last active version"
complete -c flutter -f -n __fish_use_subcommand -a drive -d "Run integration tests"
complete -c flutter -f -n __fish_use_subcommand -a emulators -d "List, launch and create emulators"
complete -c flutter -f -n __fish_use_subcommand -a format -d "Format one or more Dart files"
complete -c flutter -f -n __fish_use_subcommand -a gen-l10n -d "Generate localization files"
complete -c flutter -f -n __fish_use_subcommand -a install -d "Install Flutter app on device"
complete -c flutter -f -n __fish_use_subcommand -a logs -d "Show log output for running Flutter apps"
complete -c flutter -f -n __fish_use_subcommand -a make-host-app-editable -d "Make host app editable"
complete -c flutter -f -n __fish_use_subcommand -a packages -d "Commands for managing packages"
complete -c flutter -f -n __fish_use_subcommand -a precache -d "Populate the Flutter tool's cache"
complete -c flutter -f -n __fish_use_subcommand -a pub -d "Commands for managing packages"
complete -c flutter -f -n __fish_use_subcommand -a run -d "Run your Flutter app"
complete -c flutter -f -n __fish_use_subcommand -a screenshot -d "Take a screenshot from a connected device"
complete -c flutter -f -n __fish_use_subcommand -a test -d "Run Flutter unit tests"
complete -c flutter -f -n __fish_use_subcommand -a upgrade -d "Upgrade your copy of Flutter"

# Global options
complete -c flutter -s h -l help -d "Show help"
complete -c flutter -s v -l verbose -d "Enable verbose logging"
complete -c flutter -l version -d "Show Flutter version"
complete -c flutter -l no-version-check -d "Skip version check"
complete -c flutter -l enable-analytics -d "Enable analytics"
complete -c flutter -l disable-analytics -d "Disable analytics"
complete -c flutter -l suppress-analytics -d "Suppress analytics"

# Flutter create command options
complete -c flutter -n "__fish_seen_subcommand_from create" -l platform -d "Platforms to create" -x -a "android ios web linux macos windows"
complete -c flutter -n "__fish_seen_subcommand_from create" -s a -l android-language -d "Android language" -x -a "java kotlin"
complete -c flutter -n "__fish_seen_subcommand_from create" -s i -l ios-language -d "iOS language" -x -a "objc swift"
complete -c flutter -n "__fish_seen_subcommand_from create" -s t -l template -d "Project template" -x -a "app module package plugin plugin_ffi skeleton"
complete -c flutter -n "__fish_seen_subcommand_from create" -l org -d "Organization for package name"
complete -c flutter -n "__fish_seen_subcommand_from create" -l project-name -d "Project name"
complete -c flutter -n "__fish_seen_subcommand_from create" -l description -d "Project description"

# Flutter run command options
complete -c flutter -n "__fish_seen_subcommand_from run" -s d -l device -d "Target device" -a "(__fish_flutter_devices)"
complete -c flutter -n "__fish_seen_subcommand_from run" -l flavor -d "Build flavor"
complete -c flutter -n "__fish_seen_subcommand_from run" -l target -d "Main entrypoint file" -r
complete -c flutter -n "__fish_seen_subcommand_from run" -l release -d "Build in release mode"
complete -c flutter -n "__fish_seen_subcommand_from run" -l debug -d "Build in debug mode"
complete -c flutter -n "__fish_seen_subcommand_from run" -l profile -d "Build in profile mode"
complete -c flutter -n "__fish_seen_subcommand_from run" -l hot -d "Run with hot reload"
complete -c flutter -n "__fish_seen_subcommand_from run" -l cold -d "Run with cold reload"
complete -c flutter -n "__fish_seen_subcommand_from run" -l pid-file -d "Write process ID to file"
complete -c flutter -n "__fish_seen_subcommand_from run" -l route -d "Initial route"
complete -c flutter -n "__fish_seen_subcommand_from run" -l web-renderer -d "Web renderer" -x -a "canvaskit html"

# Flutter build command
complete -c flutter -n "__fish_seen_subcommand_from build" -f -a aar -d "Build AAR"
complete -c flutter -n "__fish_seen_subcommand_from build" -f -a apk -d "Build APK"
complete -c flutter -n "__fish_seen_subcommand_from build" -f -a appbundle -d "Build app bundle"
complete -c flutter -n "__fish_seen_subcommand_from build" -f -a ios -d "Build iOS"
complete -c flutter -n "__fish_seen_subcommand_from build" -f -a ios-framework -d "Build iOS framework"
complete -c flutter -n "__fish_seen_subcommand_from build" -f -a linux -d "Build Linux"
complete -c flutter -n "__fish_seen_subcommand_from build" -f -a macos -d "Build macOS"
complete -c flutter -n "__fish_seen_subcommand_from build" -f -a web -d "Build web"
complete -c flutter -n "__fish_seen_subcommand_from build" -f -a windows -d "Build Windows"

# Flutter test command options
complete -c flutter -n "__fish_seen_subcommand_from test" -l coverage -d "Collect coverage"
complete -c flutter -n "__fish_seen_subcommand_from test" -l machine -d "Output machine readable format"
complete -c flutter -n "__fish_seen_subcommand_from test" -l name -d "Run only tests matching pattern"
complete -c flutter -n "__fish_seen_subcommand_from test" -l plain-name -d "Run only tests with plain name"
complete -c flutter -n "__fish_seen_subcommand_from test" -l tags -d "Run only tests with tags"
complete -c flutter -n "__fish_seen_subcommand_from test" -l exclude-tags -d "Exclude tests with tags"
complete -c flutter -n "__fish_seen_subcommand_from test" -l start-after -d "Start after a specific test"
complete -c flutter -n "__fish_seen_subcommand_from test" -l total-shards -d "Total number of shards"
complete -c flutter -n "__fish_seen_subcommand_from test" -l shard-index -d "Index of this shard"

# Helper function to get device list
function __fish_flutter_devices
    if command -q flutter
        flutter devices --machine 2>/dev/null | string match -r '"name":"([^"]+)"' | string replace -r '.*"name":"([^"]+)".*' '$1'
    end
end

# Flutter pub commands
complete -c flutter -n "__fish_seen_subcommand_from pub" -f -a add -d "Add package dependencies"
complete -c flutter -n "__fish_seen_subcommand_from pub" -f -a cache -d "Manage cache"
complete -c flutter -n "__fish_seen_subcommand_from pub" -f -a deps -d "Print dependencies"
complete -c flutter -n "__fish_seen_subcommand_from pub" -f -a downgrade -d "Downgrade dependencies"
complete -c flutter -n "__fish_seen_subcommand_from pub" -f -a get -d "Get dependencies"
complete -c flutter -n "__fish_seen_subcommand_from pub" -f -a global -d "Manage global packages"
complete -c flutter -n "__fish_seen_subcommand_from pub" -f -a login -d "Log in to pub.dev"
complete -c flutter -n "__fish_seen_subcommand_from pub" -f -a logout -d "Log out of pub.dev"
complete -c flutter -n "__fish_seen_subcommand_from pub" -f -a outdated -d "Show outdated packages"
complete -c flutter -n "__fish_seen_subcommand_from pub" -f -a publish -d "Publish package"
complete -c flutter -n "__fish_seen_subcommand_from pub" -f -a remove -d "Remove dependencies"
complete -c flutter -n "__fish_seen_subcommand_from pub" -f -a upgrade -d "Upgrade dependencies"
