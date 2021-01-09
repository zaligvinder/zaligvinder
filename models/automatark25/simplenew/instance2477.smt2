(declare-const X String)
; /^\/\w{1,2}\/\w{1,3}\.class$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 1 2) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "/") ((_ re.loop 1 3) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re ".class/U\x0a")))))
(check-sat)
