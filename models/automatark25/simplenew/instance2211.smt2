(declare-const X String)
; Host\u{3A}\s+Host\u{3A}Subject\u{3a}namedDownloadUser-Agent\u{3a}BackAtTaCk
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:Subject:namedDownloadUser-Agent:BackAtTaCk\u{a}")))))
(check-sat)
