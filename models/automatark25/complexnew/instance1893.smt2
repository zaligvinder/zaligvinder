(declare-const X String)
; /\/count\d{2}\.php$/U
(assert (str.in_re X (re.++ (str.to_re "//count") ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re ".php/U\u{a}"))))
; [^A-Za-z0-9 ]
(assert (str.in_re X (re.++ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to_re " ")) (str.to_re "\u{a}"))))
; /^\/\d{8,11}\/1[34]\d{8}\.pdf$/U
(assert (not (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 8 11) (re.range "0" "9")) (str.to_re "/1") (re.union (str.to_re "3") (str.to_re "4")) ((_ re.loop 8 8) (re.range "0" "9")) (str.to_re ".pdf/U\u{a}")))))
(check-sat)
