(declare-const X String)
; Host\u{3A}\d+zmnjgmomgbdz\u{2f}zzmw\.gzt%3ftoolbar\u{2E}i-lookup\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "zmnjgmomgbdz/zzmw.gzt%3ftoolbar.i-lookup.com\u{a}"))))
(check-sat)
