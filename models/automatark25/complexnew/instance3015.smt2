(declare-const X String)
; /filename=[^\n]*\x2eopus/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".opus/i\x0a")))))
; ^.{0,0}
(assert (str.in.re X (re.++ ((_ re.loop 0 0) re.allchar) (str.to.re "\x0a"))))
; Host\x3A[^\n\r]*\x2Fbar_pl\x2Fshdoclc\.fcgi
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "/bar_pl/shdoclc.fcgi\x0a"))))
(check-sat)
