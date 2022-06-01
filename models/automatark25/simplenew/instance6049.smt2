(declare-const X String)
; URL\s+url=Host\u{3a}httpUser-Agent\u{3A}Subject\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "URL") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "url=Host:httpUser-Agent:Subject:\u{a}")))))
(check-sat)
