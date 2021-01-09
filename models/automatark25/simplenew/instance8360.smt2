(declare-const X String)
; /^\/images2\/[0-9a-fA-F]{500,}/U
(assert (not (str.in.re X (re.++ (str.to.re "//images2//U\x0a") ((_ re.loop 500 500) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (re.* (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F")))))))
(check-sat)
