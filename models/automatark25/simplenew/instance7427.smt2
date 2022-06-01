(declare-const X String)
; User-Agent\u{3a}\sRequestwww\u{2E}altnet\u{2E}comSubject\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Requestwww.altnet.com\u{1b}Subject:\u{a}")))))
(check-sat)
