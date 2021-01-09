(declare-const X String)
; ^[A-Za-z]{3,4}[0-9]{6}$
(assert (str.in.re X (re.++ ((_ re.loop 3 4) (re.union (re.range "A" "Z") (re.range "a" "z"))) ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "\x0a"))))
; The company delivers cakes and also online send mothers  day flowers to Delhi.
(assert (not (str.in.re X (re.++ (str.to.re "The company delivers cakes and also online send mothers  day flowers to Delhi") re.allchar (str.to.re "\x0a")))))
(check-sat)
