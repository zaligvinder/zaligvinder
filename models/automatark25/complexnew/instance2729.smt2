(declare-const X String)
; /\/stat_u\/$/U
(assert (str.in.re X (str.to.re "//stat_u//U\x0a")))
; ^100$|^100.00$|^\d{0,2}(\.\d{1,2})? *%?$
(assert (str.in.re X (re.union (str.to.re "100") (re.++ (str.to.re "100") re.allchar (str.to.re "00")) (re.++ ((_ re.loop 0 2) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (re.* (str.to.re " ")) (re.opt (str.to.re "%")) (str.to.re "\x0a")))))
(check-sat)
