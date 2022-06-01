(declare-const X String)
; (\\.|[^"])*
(assert (str.in_re X (re.++ (re.* (re.union (re.++ (str.to_re "\u{5c}") re.allchar) (re.comp (str.to_re "\u{22}")))) (str.to_re "\u{a}"))))
; GREATHost\u{3a}FILESIZE\u{3E}\u{2F}iis2ebs\.aspFTPUser-Agent\u{3A}
(assert (str.in_re X (str.to_re "GREATHost:FILESIZE>\u{13}/iis2ebs.aspFTPUser-Agent:\u{a}")))
(check-sat)
