# For apt (Debian/Ubuntu)
command -v apt && echo "Uses apt"

# For dnf (Fedora)
command -v dnf && echo "Uses dnf"

# For yum (CentOS/RHEL 7 and earlier)
command -v yum && echo "Uses yum"

# For pacman (Arch Linux)
command -v pacman && echo "Uses pacman"

# For zypper (openSUSE)
command -v zypper && echo "Uses zypper"

# For apk (Alpine Linux)
command -v apk && echo "Uses apk"
