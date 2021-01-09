(declare-const X String)
; /\x2ewmf([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.wmf") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; GREATHost\x3aFILESIZE\x3E\x2Fiis2ebs\.aspFTPUser-Agent\x3A
(assert (str.in.re X (str.to.re "GREATHost:FILESIZE>\x13/iis2ebs.aspFTPUser-Agent:\x0a")))
(check-sat)
