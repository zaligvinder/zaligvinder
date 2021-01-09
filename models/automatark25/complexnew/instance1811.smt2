(declare-const X String)
; ^(([0]?[0-5][0-9]|[0-9]):([0-5][0-9]))$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.union (re.++ (re.opt (str.to.re "0")) (re.range "0" "5") (re.range "0" "9")) (re.range "0" "9")) (str.to.re ":") (re.range "0" "5") (re.range "0" "9")))))
; Host\x3a\w+Pre\x2Fta\x2FNEWS\x2FKeyloggeradfsgecoiwnfhirmvtg\x2fggqh\.kqh
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Pre/ta/NEWS/Keyloggeradfsgecoiwnf\x1bhirmvtg/ggqh.kqh\x1b\x0a")))))
; Strip-Player.*MyAgent.*\x2Fnewsurfer4\x2F
(assert (not (str.in.re X (re.++ (str.to.re "Strip-Player\x1b") (re.* re.allchar) (str.to.re "MyAgent") (re.* re.allchar) (str.to.re "/newsurfer4/\x0a")))))
(check-sat)
