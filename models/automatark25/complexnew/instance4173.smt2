(declare-const X String)
; /\/images\/[a-zA-Z]\.php\?id\=[0-9]{2,3}(\.\d)?$/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//images/") (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to.re ".php?id=") ((_ re.loop 2 3) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") (re.range "0" "9"))) (str.to.re "/Ui\x0a")))))
; Host\x3Acdpnode=FILESIZE\x3E
(assert (str.in.re X (str.to.re "Host:cdpnode=FILESIZE>\x13\x0a")))
(check-sat)
