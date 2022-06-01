(declare-const X String)
; Kontiki\s+resultsmaster\u{2E}com\u{7c}roogoo\u{7c}
(assert (not (str.in_re X (re.++ (str.to_re "Kontiki") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "resultsmaster.com\u{13}|roogoo|\u{a}")))))
(check-sat)
