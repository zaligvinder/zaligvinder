(declare-const X String)
; www\u{2E}richfind\u{2E}com\d+UI2
(assert (not (str.in_re X (re.++ (str.to_re "www.richfind.com") (re.+ (re.range "0" "9")) (str.to_re "UI2\u{a}")))))
(check-sat)
