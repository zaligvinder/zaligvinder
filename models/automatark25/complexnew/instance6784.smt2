(declare-const X String)
; ^\d{4,}$|^[3-9]\d{2}$|^2[5-9]\d$
(assert (str.in.re X (re.union (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.* (re.range "0" "9"))) (re.++ (re.range "3" "9") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to.re "2") (re.range "5" "9") (re.range "0" "9") (str.to.re "\x0a")))))
; /^\/\d+$/Ui
(assert (str.in.re X (re.++ (str.to.re "//") (re.+ (re.range "0" "9")) (str.to.re "/Ui\x0a"))))
; e2give\.comConnectionSpywww\x2Eslinkyslate
(assert (not (str.in.re X (str.to.re "e2give.comConnectionSpywww.slinkyslate\x0a"))))
(check-sat)
