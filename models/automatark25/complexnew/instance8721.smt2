(declare-const X String)
; www\u{2E}onlinecasinoextra\u{2E}comsqlads\.grokads\.com
(assert (not (str.in_re X (str.to_re "www.onlinecasinoextra.comsqlads.grokads.com\u{a}"))))
; User-Agent\u{3A}\s+information\swww\u{2E}topadwarereviews\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "information") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "www.topadwarereviews.com\u{a}"))))
(check-sat)
