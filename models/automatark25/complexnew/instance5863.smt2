(declare-const X String)
; /\x2enab([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.nab") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; /\x5f\w{24}\.exe/Pi
(assert (str.in.re X (re.++ (str.to.re "/_") ((_ re.loop 24 24) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re ".exe/Pi\x0a"))))
; hirmvtg\x2fggqh\.kqh\w+whenu\x2Ecom\w+weatherHost\x3AUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "hirmvtg/ggqh.kqh\x1b") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "whenu.com\x13") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "weatherHost:User-Agent:\x0a"))))
(check-sat)
