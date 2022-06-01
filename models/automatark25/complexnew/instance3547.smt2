(declare-const X String)
; pass=Referer\u{3A}Surveillance
(assert (not (str.in_re X (str.to_re "pass=Referer:Surveillance\u{13}\u{a}"))))
; GREATHost\u{3a}FILESIZE\u{3E}\u{2F}iis2ebs\.aspFTPUser-Agent\u{3A}
(assert (str.in_re X (str.to_re "GREATHost:FILESIZE>\u{13}/iis2ebs.aspFTPUser-Agent:\u{a}")))
(check-sat)
