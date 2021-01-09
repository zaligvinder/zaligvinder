(declare-const X String)
; /\/count\d{2}\.php$/U
(assert (str.in.re X (re.++ (str.to.re "//count") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re ".php/U\x0a"))))
; [^A-Za-z0-9 ]
(assert (str.in.re X (re.++ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re " ")) (str.to.re "\x0a"))))
; /^\/\d{8,11}\/1[34]\d{8}\.pdf$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 8 11) (re.range "0" "9")) (str.to.re "/1") (re.union (str.to.re "3") (str.to.re "4")) ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re ".pdf/U\x0a")))))
(check-sat)
