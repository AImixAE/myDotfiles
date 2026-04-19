# Dart command completion for Fish shell

# Main dart commands
complete -c dart -f -n __fish_use_subcommand -a analyze -d "Analyze Dart code"
complete -c dart -f -n __fish_use_subcommand -a compile -d "Compile Dart to various formats"
complete -c dart -f -n __fish_use_subcommand -a create -d "Create a new Dart project"
complete -c dart -f -n __fish_use_subcommand -a doc -d "Generate documentation"
complete -c dart -f -n __fish_use_subcommand -a fix -d "Apply automated fixes"
complete -c dart -f -n __fish_use_subcommand -a format -d "Format Dart code"
complete -c dart -f -n __fish_use_subcommand -a info -d "Show information about Dart"
complete -c dart -f -n __fish_use_subcommand -a migrate -d "Migration tool for null safety"
complete -c dart -f -n __fish_use_subcommand -a pub -d "Package management commands"
complete -c dart -f -n __fish_use_subcommand -a run -d "Run Dart program"
complete -c dart -f -n __fish_use_subcommand -a test -d "Run Dart tests"

# Global options
complete -c dart -s h -l help -d "Show help"
complete -c dart -s v -l verbose -d "Enable verbose logging"
complete -c dart -l version -d "Show Dart version"
complete -c dart -l enable-analytics -d "Enable analytics"
complete -c dart -l disable-analytics -d "Disable analytics"

# Dart compile subcommands
complete -c dart -n "__fish_seen_subcommand_from compile" -f -a aot-snapshot -d "Compile to AOT snapshot"
complete -c dart -n "__fish_seen_subcommand_from compile" -f -a exe -d "Compile to executable"
complete -c dart -n "__fish_seen_subcommand_from compile" -f -a jit-snapshot -d "Compile to JIT snapshot"
complete -c dart -n "__fish_seen_subcommand_from compile" -f -a js -d "Compile to JavaScript"
complete -c dart -n "__fish_seen_subcommand_from compile" -f -a kernel -d "Compile to kernel binary"

# Dart compile exe options
complete -c dart -n "__fish_seen_subcommand_from exe" -l output -s o -d "Output file" -r
complete -c dart -n "__fish_seen_subcommand_from exe" -l define -d "Define environment variable"

# Dart run command
complete -c dart -n "__fish_seen_subcommand_from run" -l enable-asserts -d "Enable assert statements"
complete -c dart -n "__fish_seen_subcommand_from run" -l enable-vm-service -d "Enable VM service"
complete -c dart -n "__fish_seen_subcommand_from run" -l pause-isolates-on-start -d "Pause isolates on start"
complete -c dart -n "__fish_seen_subcommand_from run" -d "Run Dart file" -a "(__fish_complete_dart_files)"

# Dart test command
complete -c dart -n "__fish_seen_subcommand_from test" -l coverage -d "Collect coverage"
complete -c dart -n "__fish_seen_subcommand_from test" -l concurrency -d "Number of concurrent test suites" -x
complete -c dart -n "__fish_seen_subcommand_from test" -l name -d "Run only tests matching pattern"
complete -c dart -n "__fish_seen_subcommand_from test" -l plain-name -d "Run only tests with plain name"
complete -c dart -n "__fish_seen_subcommand_from test" -l platform -d "Platform to run tests on" -x -a "vm chrome firefox edge ie"

# Dart pub commands
complete -c dart -n "__fish_seen_subcommand_from pub" -f -a add -d "Add package dependencies"
complete -c dart -n "__fish_seen_subcommand_from pub" -f -a cache -d "Manage cache"
complete -c dart -n "__fish_seen_subcommand_from pub" -f -a deps -d "Print dependencies"
complete -c dart -n "__fish_seen_subcommand_from pub" -f -a downgrade -d "Downgrade dependencies"
complete -c dart -n "__fish_seen_subcommand_from pub" -f -a get -d "Get dependencies"
complete -c dart -n "__fish_seen_subcommand_from pub" -f -a global -d "Manage global packages"
complete -c dart -n "__fish_seen_subcommand_from pub" -f -a outdated -d "Show outdated packages"
complete -c dart -n "__fish_seen_subcommand_from pub" -f -a publish -d "Publish package"
complete -c dart -n "__fish_seen_subcommand_from pub" -f -a remove -d "Remove dependencies"
complete -c dart -n "__fish_seen_subcommand_from pub" -f -a upgrade -d "Upgrade dependencies"

# Helper function for Dart file completion
function __fish_complete_dart_files
    ls *.dart 2>/dev/null | string replace -r '\.dart$' ''
end

# Dart format command
complete -c dart -n "__fish_seen_subcommand_from format" -l fix -d "Apply fixes"
complete -c dart -n "__fish_seen_subcommand_from format" -l line-length -d "Line length" -x
complete -c dart -n "__fish_seen_subcommand_from format" -l output -s o -d "Output format" -x -a "json show"

# Dart analyze command
complete -c dart -n "__fish_seen_subcommand_from analyze" -l fatal-infos -d "Treat info as fatal"
complete -c dart -n "__fish_seen_subcommand_from analyze" -l fatal-warnings -d "Treat warnings as fatal"
