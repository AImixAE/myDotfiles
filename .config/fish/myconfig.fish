if status is-interactive
    function cat
        bat -Pp $argv
    end

    function catn
        bat -Ppn $argv
    end

    alias l="lazygit"
    alias oc="opencode"

    alias py=python
    alias ipy=ipython

    abbr srun "systemd-run --user -u cmd --scope"
end

set -gx PNPM_HOME ~/.local/share/pnpm
set -gx CHROME_EXECUTABLE google-chrome-stable

function md
    mkdir -p $argv
end

set PROXY_PORT 7890

alias proxy="all_proxy=http://127.0.0.1:$PROXY_PORT https_proxy=http://127.0.0.1:$PROXY_PORT http_proxy=http://127.0.0.1:$PROXY_PORT"

set -x RUSTUP_UPDATE_ROOT https://mirrors.tuna.tsinghua.edu.cn/rustup/rustup
set -x RUSTUP_DIST_SERVER https://mirrors.tuna.tsinghua.edu.cn/rustup
