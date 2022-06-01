(declare-const X String)
; Subject\u{3a}SpywareSpyBuddy
(assert (not (str.in_re X (str.to_re "Subject:SpywareSpyBuddy\u{a}"))))
; /^[a-z]{5}\d=_\d_/C
(assert (not (str.in_re X (re.++ (str.to_re "/") ((_ re.loop 5 5) (re.range "a" "z")) (re.range "0" "9") (str.to_re "=_") (re.range "0" "9") (str.to_re "_/C\u{a}")))))
; User-Agent\u{3A}\s+GET\d+\u{2F}communicatortb
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "GET") (re.+ (re.range "0" "9")) (str.to_re "/communicatortb\u{a}"))))
; pgwtjgxwthx\u{2f}byb\.xkyLOGurl=enews\u{2E}earthlink\u{2E}net
(assert (not (str.in_re X (str.to_re "pgwtjgxwthx/byb.xkyLOGurl=enews.earthlink.net\u{a}"))))
(check-sat)
