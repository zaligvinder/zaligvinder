(declare-const X String)
; Hello\u{2E}\s+ovplrichfind\u{2E}comCookie\u{3a}
(assert (str.in_re X (re.++ (str.to_re "Hello.") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ovplrichfind.comCookie:\u{a}"))))
; filename=\u{22}\dDA\s+www\u{2E}peer2mail\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "filename=\u{22}") (re.range "0" "9") (str.to_re "DA") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.peer2mail.com\u{a}")))))
; Kontikidownloadfile\u{2e}orged2kcom\u{3E}Host\u{3A}Windows
(assert (not (str.in_re X (str.to_re "Kontikidownloadfile.orged2kcom>Host:Windows\u{a}"))))
(check-sat)
