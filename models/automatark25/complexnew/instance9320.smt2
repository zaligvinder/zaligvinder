(declare-const X String)
; ^(#){1}([a-fA-F0-9]){6}$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (str.to.re "#")) ((_ re.loop 6 6) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9"))) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2ehpj/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".hpj/i\x0a"))))
; /filename=[^\n]*\x2excf/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xcf/i\x0a"))))
; bind\w+Owner\x3A\dBetaWordixqshv\x2fqzccs
(assert (str.in.re X (re.++ (str.to.re "bind") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Owner:") (re.range "0" "9") (str.to.re "BetaWordixqshv/qzccs\x0a"))))
; href[ ]*=[ ]*('|\")([^\"'])*('|\")
(assert (not (str.in.re X (re.++ (str.to.re "href") (re.* (str.to.re " ")) (str.to.re "=") (re.* (str.to.re " ")) (re.union (str.to.re "'") (str.to.re "\x22")) (re.* (re.union (str.to.re "\x22") (str.to.re "'"))) (re.union (str.to.re "'") (str.to.re "\x22")) (str.to.re "\x0a")))))
(check-sat)
