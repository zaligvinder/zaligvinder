(declare-const X String)
; zmnjgmomgbdz\u{2f}zzmw\.gztwww3\.addfreestats\.comKeylogger
(assert (not (str.in_re X (str.to_re "zmnjgmomgbdz/zzmw.gztwww3.addfreestats.comKeylogger\u{a}"))))
; ^(\d+\.\d+)$
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") (re.+ (re.range "0" "9")) (str.to_re ".") (re.+ (re.range "0" "9"))))))
(check-sat)
