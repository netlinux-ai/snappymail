# snappymail

Snappymail webmail client packaged as a `.deb` for Debian/Ubuntu.

Installs the Snappymail PHP application to `/usr/share/snappymail` with
data directory at `/var/lib/snappymail`. Includes an nginx configuration
snippet at `/etc/nginx/snippets/snappymail.conf`.

## Install

```bash
# From the NetLinux repository
sudo apt install snappymail

# Configure your web server to serve /usr/share/snappymail
# An nginx snippet is provided — include it in your server block:
#   include snippets/snappymail.conf;

# Set ownership for the data directory
sudo chown -R www-data:www-data /var/lib/snappymail
```

## Build

Builds automatically via GitHub Actions on push to `main`. The workflow
downloads the upstream release tarball and packages it with checkinstall.

## Source

- **Upstream:** https://github.com/the-djmaze/snappymail
- **Package:** https://github.com/netlinux-ai/snappymail
