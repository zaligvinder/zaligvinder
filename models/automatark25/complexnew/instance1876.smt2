(declare-const X String)
; client\x2Ebaigoo\x2EcomUser\x3A
(assert (not (str.in.re X (str.to.re "client.baigoo.comUser:\x0a"))))
; [0-7]+
(assert (not (str.in.re X (re.++ (re.+ (re.range "0" "7")) (str.to.re "\x0a")))))
(check-sat)
