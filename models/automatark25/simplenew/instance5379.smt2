(declare-const X String)
; /\?java\=[0-9]{2,6}$/U
(assert (str.in.re X (re.++ (str.to.re "/?java=") ((_ re.loop 2 6) (re.range "0" "9")) (str.to.re "/U\x0a"))))
(check-sat)
