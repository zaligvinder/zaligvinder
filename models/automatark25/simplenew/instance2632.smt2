(declare-const X String)
; v\x3B\d+more.*is\.htazmnjgmomgbdz\x2fzzmw\.gzt
(assert (not (str.in.re X (re.++ (str.to.re "v;") (re.+ (re.range "0" "9")) (str.to.re "more") (re.* re.allchar) (str.to.re "is.htazmnjgmomgbdz/zzmw.gzt\x0a")))))
(check-sat)
