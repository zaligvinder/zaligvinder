(declare-const X String)
; ^100$|^\d{0,2}(\.\d{1,2})? *%?$
(assert (not (str.in.re X (re.union (str.to.re "100") (re.++ ((_ re.loop 0 2) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (re.* (str.to.re " ")) (re.opt (str.to.re "%")) (str.to.re "\x0a"))))))
(check-sat)
