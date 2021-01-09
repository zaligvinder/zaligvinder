(declare-const X String)
; /filename=[^\n]*\x2exslt/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xslt/i\x0a")))))
; ^[A-Z]{3}(\s)?[0-9]{4}$
(assert (str.in.re X (re.++ ((_ re.loop 3 3) (re.range "A" "Z")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; User-Agent\x3Aupgrade\x2Eqsrch\x2Einfo
(assert (not (str.in.re X (str.to.re "User-Agent:upgrade.qsrch.info\x0a"))))
; is\w+gdvsotuqwsg\x2fdxt\.hd
(assert (str.in.re X (re.++ (str.to.re "is") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "gdvsotuqwsg/dxt.hd\x0a"))))
; ^[^iIoOqQ'-]{10,17}$
(assert (not (str.in.re X (re.++ ((_ re.loop 10 17) (re.union (str.to.re "i") (str.to.re "I") (str.to.re "o") (str.to.re "O") (str.to.re "q") (str.to.re "Q") (str.to.re "'") (str.to.re "-"))) (str.to.re "\x0a")))))
(check-sat)
