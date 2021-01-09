(declare-const X String)
; /\?id=[A-Z0-9]{20}&cmd=img/U
(assert (str.in.re X (re.++ (str.to.re "/?id=") ((_ re.loop 20 20) (re.union (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "&cmd=img/U\x0a"))))
(check-sat)
