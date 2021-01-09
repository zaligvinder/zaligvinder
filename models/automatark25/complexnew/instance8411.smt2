(declare-const X String)
; zmnjgmomgbdz\x2fzzmw\.gztwww3\.addfreestats\.comKeylogger
(assert (not (str.in.re X (str.to.re "zmnjgmomgbdz/zzmw.gztwww3.addfreestats.comKeylogger\x0a"))))
; ^(\d+\.\d+)$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.+ (re.range "0" "9")) (str.to.re ".") (re.+ (re.range "0" "9"))))))
(check-sat)
