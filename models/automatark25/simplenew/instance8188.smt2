(declare-const X String)
; The company delivers cakes and also online send mothers  day flowers to Delhi.
(assert (str.in_re X (re.++ (str.to_re "The company delivers cakes and also online send mothers  day flowers to Delhi") re.allchar (str.to_re "\u{a}"))))
(check-sat)
