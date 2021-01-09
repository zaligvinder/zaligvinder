(declare-const X String)
; /filename=[^\n]*\x2epls/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".pls/i\x0a"))))
; MyverToolbarTrojanControlHost\x3A
(assert (str.in.re X (str.to.re "MyverToolbarTrojanControlHost:\x0a")))
; ^\d{1,5}(\.\d{1,2})?$
(assert (str.in.re X (re.++ ((_ re.loop 1 5) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (str.to.re "\x0a"))))
; /\/[a-zA-Z0-9]{32}\.jar/U
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 32 32) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re ".jar/U\x0a")))))
(check-sat)
