package{'vsftpd':
        ensure          => "installed",
        provider        => "yum",
        allow_virtual   => "false",
        }
file{'/etc/vsftpd/vsftpd.conf':
        ensure          => "present",
        source          => "file:///root/puppetcode/files/vsftpd.conf",
        require         => Package['vsftpd'],
        }
service{'vsftpd':
        ensure          => "running",
        }
