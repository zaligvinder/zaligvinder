(declare-const X String)
; /^\/[a-z0-9]+\/access\.log$/Ui
(assert (str.in.re X (re.++ (str.to.re "//") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "/access.log/Ui\x0a"))))
; /\x2ejs\x3f[a-zA-Z0-9]{9,20}=Mozilla\x2f/UGi
(assert (not (str.in.re X (re.++ (str.to.re "/.js?") ((_ re.loop 9 20) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "=Mozilla//UGi\x0a")))))
; Subject\x3AHost\x3aHost\x3A000Filelogin_ok\x5EMiniCommand
(assert (str.in.re X (str.to.re "Subject:Host:Host:000Filelogin_ok^MiniCommand\x0a")))
; /filename=[^\n]*\x2exul/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xul/i\x0a")))))
(check-sat)
