(declare-const X String)
; /^\/jhan.jar?r=\d+/Ui
(assert (str.in.re X (re.++ (str.to.re "//jhan") re.allchar (str.to.re "ja") (re.opt (str.to.re "r")) (str.to.re "r=") (re.+ (re.range "0" "9")) (str.to.re "/Ui\x0a"))))
(check-sat)
