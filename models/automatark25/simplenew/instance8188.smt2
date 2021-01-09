(declare-const X String)
; The company delivers cakes and also online send mothers  day flowers to Delhi.
(assert (str.in.re X (re.++ (str.to.re "The company delivers cakes and also online send mothers  day flowers to Delhi") re.allchar (str.to.re "\x0a"))))
(check-sat)
