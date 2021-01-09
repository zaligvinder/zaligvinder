(declare-const X String)
; Shell\x2FFileage\x7D\x7BPort\x3Aupd\x2Elop\x2Ecom
(assert (not (str.in.re X (str.to.re "Shell/Fileage}{Port:upd.lop.com\x0a"))))
; /^\d+O\d+\.jsp\?[a-z0-9\x3d\x2b\x2f]{20}/iR
(assert (str.in.re X (re.++ (str.to.re "/") (re.+ (re.range "0" "9")) (str.to.re "O") (re.+ (re.range "0" "9")) (str.to.re ".jsp?") ((_ re.loop 20 20) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "=") (str.to.re "+") (str.to.re "/"))) (str.to.re "/iR\x0a"))))
; /\/home\/index.asp\?typeid\=[0-9]{1,3}/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//home/index") re.allchar (str.to.re "asp?typeid=") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re "/Ui\x0a")))))
; ((<body)|(<BODY))([^>]*)>
(assert (str.in.re X (re.++ (re.union (str.to.re "<body") (str.to.re "<BODY")) (re.* (re.comp (str.to.re ">"))) (str.to.re ">\x0a"))))
(check-sat)
