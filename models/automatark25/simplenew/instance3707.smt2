(declare-const X String)
; OVN\s+\u{2A}PORT3\u{2A}\[DRIVEwww\.raxsearch\.com
(assert (not (str.in_re X (re.++ (str.to_re "OVN") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "*PORT3*[DRIVEwww.raxsearch.com\u{a}")))))
(check-sat)
