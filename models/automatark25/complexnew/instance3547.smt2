(declare-const X String)
; pass=Referer\x3ASurveillance
(assert (not (str.in.re X (str.to.re "pass=Referer:Surveillance\x13\x0a"))))
; GREATHost\x3aFILESIZE\x3E\x2Fiis2ebs\.aspFTPUser-Agent\x3A
(assert (str.in.re X (str.to.re "GREATHost:FILESIZE>\x13/iis2ebs.aspFTPUser-Agent:\x0a")))
(check-sat)
