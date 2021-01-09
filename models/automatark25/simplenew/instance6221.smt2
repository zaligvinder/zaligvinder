(declare-const X String)
; GREATHost\x3aFILESIZE\x3E\x2Fiis2ebs\.aspFTPUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "GREATHost:FILESIZE>\x13/iis2ebs.aspFTPUser-Agent:\x0a"))))
(check-sat)
