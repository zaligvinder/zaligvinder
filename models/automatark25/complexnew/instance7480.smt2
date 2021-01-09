(declare-const X String)
; ^([A-Z]{2}|[A-Z]\d|\d[A-Z])[1-9](\d{1,3})?$
(assert (str.in.re X (re.++ (re.union ((_ re.loop 2 2) (re.range "A" "Z")) (re.++ (re.range "A" "Z") (re.range "0" "9")) (re.++ (re.range "0" "9") (re.range "A" "Z"))) (re.range "1" "9") (re.opt ((_ re.loop 1 3) (re.range "0" "9"))) (str.to.re "\x0a"))))
; Host\x3a\dgpstool\x2eglobaladserver\x2ecomdesksearch\.dropspam\.com
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.range "0" "9") (str.to.re "gpstool.globaladserver.comdesksearch.dropspam.com\x0a")))))
(check-sat)
