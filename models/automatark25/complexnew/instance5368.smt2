(declare-const X String)
; ^[[V|E|J|G]\d\d\d\d\d\d\d\d]{0,9}$
(assert (not (str.in.re X (re.++ (re.union (str.to.re "[") (str.to.re "V") (str.to.re "|") (str.to.re "E") (str.to.re "J") (str.to.re "G")) (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") ((_ re.loop 0 9) (str.to.re "]")) (str.to.re "\x0a")))))
; WindowsAcmeReferer\x3A
(assert (not (str.in.re X (str.to.re "WindowsAcmeReferer:\x0a"))))
; /filename=[^\n]*\x2excf/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xcf/i\x0a"))))
; client\x2Ebaigoo\x2EcomUser\x3A
(assert (not (str.in.re X (str.to.re "client.baigoo.comUser:\x0a"))))
(check-sat)
