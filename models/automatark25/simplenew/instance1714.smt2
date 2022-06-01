(declare-const X String)
; www\u{2E}onlinecasinoextra\u{2E}com\s+
(assert (str.in_re X (re.++ (str.to_re "www.onlinecasinoextra.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{a}"))))
(check-sat)
