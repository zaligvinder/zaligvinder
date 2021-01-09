(declare-const X String)
; \b(0?[1-9]|1[0-2])(\/)(0?[1-9]|1[0-9]|2[0-9]|3[0-1])(\/)(0[0-8])\b
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re "/") (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "9")) (re.++ (str.to.re "3") (re.range "0" "1"))) (str.to.re "/\x0a0") (re.range "0" "8")))))
; metaresults\.copernic\.comServer\x00
(assert (not (str.in.re X (str.to.re "metaresults.copernic.comServer\x00\x0a"))))
; www\x2Esogou\x2EcomUser-Agent\x3A
(assert (str.in.re X (str.to.re "www.sogou.comUser-Agent:\x0a")))
; /\/[0-9A-F]{24}/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 24 24) (re.union (re.range "0" "9") (re.range "A" "F"))) (str.to.re "/Ui\x0a")))))
; ^([A-Z]+[a-zA-Z]*)(\s|\-)?([A-Z]+[a-zA-Z]*)?(\s|\-)?([A-Z]+[a-zA-Z]*)?$
(assert (not (str.in.re X (re.++ (re.opt (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (re.++ (re.+ (re.range "A" "Z")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z"))))) (re.opt (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (re.++ (re.+ (re.range "A" "Z")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z"))))) (str.to.re "\x0a") (re.+ (re.range "A" "Z")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z")))))))
(check-sat)
