(declare-const X String)
; zmnjgmomgbdz\u{2f}zzmw\.gztwww3\.addfreestats\.comKeylogger
(assert (str.in_re X (str.to_re "zmnjgmomgbdz/zzmw.gztwww3.addfreestats.comKeylogger\u{a}")))
; Host\u{3a}\w+Pre.*Keyloggeradfsgecoiwnfhirmvtg\u{2f}ggqh\.kqh
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Pre") (re.* re.allchar) (str.to_re "Keyloggeradfsgecoiwnf\u{1b}hirmvtg/ggqh.kqh\u{1b}\u{a}")))))
; -i%3fUser-Agent\u{3A}www\u{2e}proventactics\u{2e}com
(assert (not (str.in_re X (str.to_re "-i%3fUser-Agent:www.proventactics.com\u{a}"))))
(check-sat)
