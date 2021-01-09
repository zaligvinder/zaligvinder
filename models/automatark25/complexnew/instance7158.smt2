(declare-const X String)
; (^(\d{3}.\d{3}.\d{3}-\d{2})|(\d{11})$)
(assert (not (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 3 3) (re.range "0" "9")) re.allchar ((_ re.loop 3 3) (re.range "0" "9")) re.allchar ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9"))) ((_ re.loop 11 11) (re.range "0" "9"))) (str.to.re "\x0a")))))
; \x2Fbar_pl\x2Fchk_bar\.fcgiUser-Agent\x3A
(assert (str.in.re X (str.to.re "/bar_pl/chk_bar.fcgiUser-Agent:\x0a")))
(check-sat)
