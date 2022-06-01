(declare-const X String)
; myway\.com\s+SupervisorPalUser-Agent\u{3A}Search
(assert (not (str.in_re X (re.++ (str.to_re "myway.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "SupervisorPalUser-Agent:Search\u{a}")))))
(check-sat)
