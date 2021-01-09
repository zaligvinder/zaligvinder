(declare-const X String)
; /\/home\/index.asp\?typeid\=[0-9]{1,3}/Ui
(assert (str.in.re X (re.++ (str.to.re "//home/index") re.allchar (str.to.re "asp?typeid=") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re "/Ui\x0a"))))
(check-sat)
