(declare-const X String)
; zmnjgmomgbdz\x2fzzmw\.gztwww3\.addfreestats\.comKeylogger
(assert (str.in.re X (str.to.re "zmnjgmomgbdz/zzmw.gztwww3.addfreestats.comKeylogger\x0a")))
; Host\x3a\w+Pre.*Keyloggeradfsgecoiwnfhirmvtg\x2fggqh\.kqh
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Pre") (re.* re.allchar) (str.to.re "Keyloggeradfsgecoiwnf\x1bhirmvtg/ggqh.kqh\x1b\x0a")))))
; -i%3fUser-Agent\x3Awww\x2eproventactics\x2ecom
(assert (not (str.in.re X (str.to.re "-i%3fUser-Agent:www.proventactics.com\x0a"))))
(check-sat)
