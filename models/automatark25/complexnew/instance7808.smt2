(declare-const X String)
; (\_\_)(.+)(\_\_)
(assert (str.in.re X (re.++ (str.to.re "__") (re.+ re.allchar) (str.to.re "__\x0a"))))
; ^[A-Z]\d{2}(\.\d){0,1}$
(assert (not (str.in.re X (re.++ (re.range "A" "Z") ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") (re.range "0" "9"))) (str.to.re "\x0a")))))
; /^\/[a-f0-9]{8}\/[a-f0-9]{8}\/$/iU
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 8 8) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/") ((_ re.loop 8 8) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "//iU\x0a")))))
(check-sat)
