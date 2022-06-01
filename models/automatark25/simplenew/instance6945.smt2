(declare-const X String)
; installs\u{2E}seekmo\u{2E}com\s+spyblini\u{2E}iniUpdateUser-Agent\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "installs.seekmo.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "spyblini.iniUpdateUser-Agent:\u{a}")))))
(check-sat)
