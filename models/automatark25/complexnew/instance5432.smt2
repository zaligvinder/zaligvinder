(declare-const X String)
; Host\u{3A}\s+Basic\s+\.htaServerTheef2
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Basic") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ".htaServerTheef2\u{a}")))))
; /\/m1\.exe$/U
(assert (str.in_re X (str.to_re "//m1.exe/U\u{a}")))
(check-sat)
