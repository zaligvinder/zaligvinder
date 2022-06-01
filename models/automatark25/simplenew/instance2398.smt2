(declare-const X String)
; Host\u{3A}\s+\u{2A}PORT3\u{2A}\[DRIVEwww\.raxsearch\.comSubject\u{3a}Host\u{3a}
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "*PORT3*[DRIVEwww.raxsearch.comSubject:Host:\u{a}")))))
(check-sat)
