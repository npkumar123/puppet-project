$pkg=vsftpd
package{"${pkg}":
        ensure          =>      "installed",
        provider        =>      "yum",
        allow_virtual   =>      "false",
        }
file {"/etc/${pkg}/${pkg}.conf":
        ensure          =>      "present",
        source          =>      "file:///root/puppetcode/files/${pkg}.conf",
        require         =>      Package["${pkg}"],
        }
service {"${pkg}":
        ensure          =>      "running",
        }
