(declare-const X String)
; /\x28compatible\x3b[A-Z]*\x3b\x29\x0d\x0a/H
(assert (not (str.in.re X (re.++ (str.to.re "/(compatible;") (re.* (re.range "A" "Z")) (str.to.re ";)\x0d\x0a/H\x0a")))))
; ^(([0-9]{5})|([0-9]{3}[ ]{0,1}[0-9]{2}))$
(assert (str.in.re X (re.++ (re.union ((_ re.loop 5 5) (re.range "0" "9")) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re " ")) ((_ re.loop 2 2) (re.range "0" "9")))) (str.to.re "\x0a"))))
(check-sat)
