(declare-const X String)
; /^\/jmx.jar?r=\d+/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//jmx") re.allchar (str.to.re "ja") (re.opt (str.to.re "r")) (str.to.re "r=") (re.+ (re.range "0" "9")) (str.to.re "/Ui\x0a")))))
(check-sat)
