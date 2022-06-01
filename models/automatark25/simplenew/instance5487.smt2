(declare-const X String)
; zmnjgmomgbdz\u{2f}zzmw\.gzt\d+Ready
(assert (not (str.in_re X (re.++ (str.to_re "zmnjgmomgbdz/zzmw.gzt") (re.+ (re.range "0" "9")) (str.to_re "Ready\u{a}")))))
(check-sat)
