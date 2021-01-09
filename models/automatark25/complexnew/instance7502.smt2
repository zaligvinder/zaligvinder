(declare-const X String)
; /filename=[^\n]*\x2eapk/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".apk/i\x0a"))))
; ^.{4,8}$
(assert (str.in.re X (re.++ ((_ re.loop 4 8) re.allchar) (str.to.re "\x0a"))))
(check-sat)
