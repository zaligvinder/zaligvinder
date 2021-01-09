(declare-const X String)
; Host\x3A\d+zmnjgmomgbdz\x2fzzmw\.gzt%3ftoolbar\x2Ei-lookup\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re "zmnjgmomgbdz/zzmw.gzt%3ftoolbar.i-lookup.com\x0a"))))
(check-sat)
