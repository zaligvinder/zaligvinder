(declare-const X String)
; (\\.|[^"])*
(assert (str.in.re X (re.++ (re.* (re.union (re.++ (str.to.re "\x5c") re.allchar) (re.comp (str.to.re "\x22")))) (str.to.re "\x0a"))))
; GREATHost\x3aFILESIZE\x3E\x2Fiis2ebs\.aspFTPUser-Agent\x3A
(assert (str.in.re X (str.to.re "GREATHost:FILESIZE>\x13/iis2ebs.aspFTPUser-Agent:\x0a")))
(check-sat)
