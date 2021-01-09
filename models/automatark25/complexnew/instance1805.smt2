(declare-const X String)
; /\x2fb\x2fpkg\x2fT202[0-9a-z]{10}/U
(assert (str.in.re X (re.++ (str.to.re "//b/pkg/T202") ((_ re.loop 10 10) (re.union (re.range "0" "9") (re.range "a" "z"))) (str.to.re "/U\x0a"))))
; upgrade\x2Eqsrch\x2Einfox2Fie\.aspdcww\x2Edmcast\x2Ecom
(assert (str.in.re X (str.to.re "upgrade.qsrch.infox2Fie.aspdcww.dmcast.com\x0a")))
; hirmvtg\x2fggqh\.kqh\w+whenu\x2Ecom\w+weatherHost\x3AUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "hirmvtg/ggqh.kqh\x1b") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "whenu.com\x13") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "weatherHost:User-Agent:\x0a"))))
(check-sat)
