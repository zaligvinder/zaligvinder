(declare-const X String)
; www\u{2E}weepee\u{2E}com\s+www\u{2E}webfringe\u{2E}comwww\.123mania\.com\u{2F}0409
(assert (not (str.in_re X (re.++ (str.to_re "www.weepee.com\u{1b}") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.webfringe.comwww.123mania.com/0409\u{a}")))))
(check-sat)
