(declare-const X String)
; doarauzeraqf\x2fvvv\.ul
(assert (str.in.re X (str.to.re "doarauzeraqf/vvv.ul\x0a")))
; Informationsearchnuggetspastb\x2Efreeprod\x2EcomOnlineWeb\.fcgi
(assert (str.in.re X (str.to.re "Informationsearchnugget\x13spastb.freeprod.comOnlineWeb.fcgi\x0a")))
; ^(\d{3}-\d{3}-\d{4})*$
(assert (not (str.in.re X (re.++ (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")))) (str.to.re "\x0a")))))
(check-sat)
