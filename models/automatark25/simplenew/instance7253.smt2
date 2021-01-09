(declare-const X String)
; Subject\x3a\d+zmnjgmomgbdz\x2fzzmw\.gzt
(assert (str.in.re X (re.++ (str.to.re "Subject:") (re.+ (re.range "0" "9")) (str.to.re "zmnjgmomgbdz/zzmw.gzt\x0a"))))
(check-sat)
