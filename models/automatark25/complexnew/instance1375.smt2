(declare-const X String)
; [0-9a-fA-F]+
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to.re "\x0a"))))
; client\x2Ebaigoo\x2EcomUser\x3A
(assert (not (str.in.re X (str.to.re "client.baigoo.comUser:\x0a"))))
(check-sat)
