(declare-const X String)
; Subject\x3aSpywareSpyBuddy
(assert (str.in.re X (str.to.re "Subject:SpywareSpyBuddy\x0a")))
; Authorization\x3a\d+lnzzlnbk\x2fpkrm\.fin
(assert (not (str.in.re X (re.++ (str.to.re "Authorization:") (re.+ (re.range "0" "9")) (str.to.re "lnzzlnbk/pkrm.fin\x0a")))))
(check-sat)
