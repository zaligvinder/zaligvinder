(declare-const X String)
; Authorization\x3a\d+lnzzlnbk\x2fpkrm\.fin
(assert (not (str.in.re X (re.++ (str.to.re "Authorization:") (re.+ (re.range "0" "9")) (str.to.re "lnzzlnbk/pkrm.fin\x0a")))))
; ^[A-Z][a-z]+((i)?e(a)?(u)?[r(re)?|x]?)$
(assert (str.in.re X (re.++ (re.range "A" "Z") (re.+ (re.range "a" "z")) (str.to.re "\x0a") (re.opt (str.to.re "i")) (str.to.re "e") (re.opt (str.to.re "a")) (re.opt (str.to.re "u")) (re.opt (re.union (str.to.re "r") (str.to.re "(") (str.to.re "e") (str.to.re ")") (str.to.re "?") (str.to.re "|") (str.to.re "x"))))))
(check-sat)
