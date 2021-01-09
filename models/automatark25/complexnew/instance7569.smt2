(declare-const X String)
; addrwww\x2Etrustedsearch\x2EcomX-Mailer\x3A
(assert (not (str.in.re X (str.to.re "addrwww.trustedsearch.comX-Mailer:\x13\x0a"))))
; /^connected\x2e[^\x0D\x0A]*20\d\d[^\x0D\x0A]*ver\x3A\s+Legends\s2\x2e1/smi
(assert (str.in.re X (re.++ (str.to.re "/connected.") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "20") (re.range "0" "9") (re.range "0" "9") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "ver:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Legends") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "2.1/smi\x0a"))))
; (^[1-9]$)|(^10$)
(assert (str.in.re X (re.union (re.range "1" "9") (str.to.re "10\x0a"))))
(check-sat)
