(declare-const X String)
; zmnjgmomgbdz\x2fzzmw\.gzt\d+Ready
(assert (not (str.in.re X (re.++ (str.to.re "zmnjgmomgbdz/zzmw.gzt") (re.+ (re.range "0" "9")) (str.to.re "Ready\x0a")))))
(check-sat)
