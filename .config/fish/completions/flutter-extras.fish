# Additional Flutter completions for common workflows

# Complete existing Flutter projects
complete -c flutter -n "__fish_seen_subcommand_from run build test" -l target -r -a "(__fish_find_dart_entrypoints)"

function __fish_find_dart_entrypoints
    # Find main.dart files in lib directories
    find . -type f -name "main.dart" -path "*/lib/*" 2>/dev/null | string replace '^./' ''
    # Also check for other entrypoints in bin directory
    find . -type f -name "*.dart" -path "*/bin/*" 2>/dev/null | string replace '^./' ''
end

# Complete flavors from common config
function __fish_flutter_flavors
    # Check for flavor configurations in common locations
    if test -f "pubspec.yaml"
        grep -E "^  flavor:|^    flavor:|^  --flavor:" pubspec.yaml 2>/dev/null | string replace -r '.*flavor[:=]\s*' '' | string split " " | string trim
    end
end

# Complete device IDs for run/drive commands
complete -c flutter -n "__fish_seen_subcommand_from run drive" -s d -l device -a "(__fish_flutter_devices)" -d "Device ID"

# Complete package names for pub add
complete -c flutter -n "__fish_seen_subcommand_from pub; and __fish_seen_subcommand_from add" -d "Package name" -a "(__fish_search_pub_dev)"

function __fish_search_pub_dev
    # Simple search - can be enhanced with actual API call
    if set -q argv[1]
        curl -s "https://pub.dev/api/search?q=$argv[1]" 2>/dev/null | jq -r '.packages[].package' 2>/dev/null
    end
end

# Complete for common Flutter folder structures
complete -c flutter -n "__fish_seen_subcommand_from run test" -l target -r -a "(__fish_complete_flutter_folders)"

function __fish_complete_flutter_folders
    # Complete common Flutter paths
    set -l folders test lib integration_test example
    for folder in $folders
        if test -d $folder
            find $folder -type f -name "*.dart" 2>/dev/null | string replace '^./' ''
        end
    end
end

# Add command aliases for common shortcuts
complete -c fl -w flutter
complete -c flut -w flutter

# Tab completion for flutter pub get/upgrade
complete -c flutter -n "__fish_seen_subcommand_from pub; and __fish_seen_subcommand_from get upgrade" -l offline -d "Use offline packages"
complete -c flutter -n "__fish_seen_subcommand_from pub; and __fish_seen_subcommand_from get upgrade" -l no-example -d "Don't get example dependencies"
