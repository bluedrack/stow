
if test -z "${XDG_RUNTIME_DIR}"; then
    export XDG_RUNTIME_DIR=/tmp/${UID}-runtime-dir
    if ! test -d "${XDG_RUNTIME_DIR}"; then
        mkdir "${XDG_RUNTIME_DIR}"
        chmod 0700 "${XDG_RUNTIME_DIR}"
    fi
fi

if [[ ! $DISPLAY && ! $WSL_DISTRO_NAME ]]; then
	exec startx 1> /dev/null 2>/dev/null
fi

# >>> JVM installed by coursier >>>
export JAVA_HOME="/home/bluedrack/.cache/coursier/jvm/adopt@1.8.0-292"
export PATH="$PATH:/home/bluedrack/.cache/coursier/jvm/adopt@1.8.0-292/bin"
# <<< JVM installed by coursier <<<

# >>> coursier install directory >>>
export PATH="$PATH:/home/bluedrack/.local/share/coursier/bin"
# <<< coursier install directory <<<
