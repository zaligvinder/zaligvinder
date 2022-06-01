(declare-const X String)
; \u{2E}aspx\s+www\u{2E}altnet\u{2E}comSubject\u{3A}
(assert (str.in_re X (re.++ (str.to_re ".aspx") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.altnet.com\u{1b}Subject:\u{a}"))))
(check-sat)
