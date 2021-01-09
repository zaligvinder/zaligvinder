(declare-const X String)
; User-Agent\x3AHost\x3a\x22The
(assert (str.in.re X (str.to.re "User-Agent:Host:\x22The\x0a")))
; /filename=[^\n]*\x2em4p/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".m4p/i\x0a")))))
; Host\x3a\w+Pre\x2Fta\x2FNEWS\x2FKeyloggeradfsgecoiwnfhirmvtg\x2fggqh\.kqh
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Pre/ta/NEWS/Keyloggeradfsgecoiwnf\x1bhirmvtg/ggqh.kqh\x1b\x0a")))))
(check-sat)
