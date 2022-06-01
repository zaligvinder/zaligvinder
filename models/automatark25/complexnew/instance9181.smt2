(declare-const X String)
; /\u{2e}wmf([\?\u{5c}\u{2f}]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.wmf") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; GREATHost\u{3a}FILESIZE\u{3E}\u{2F}iis2ebs\.aspFTPUser-Agent\u{3A}
(assert (str.in_re X (str.to_re "GREATHost:FILESIZE>\u{13}/iis2ebs.aspFTPUser-Agent:\u{a}")))
(check-sat)
