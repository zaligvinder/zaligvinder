(declare-const X String)
; /^\x2f[a-z\d]{1,8}\.exe$/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 1 8) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".exe/Ui\x0a")))))
; /new (java|org)/Ui
(assert (not (str.in.re X (re.++ (str.to.re "/new ") (re.union (str.to.re "java") (str.to.re "org")) (str.to.re "/Ui\x0a")))))
; /\/pdfx\.html$/U
(assert (not (str.in.re X (str.to.re "//pdfx.html/U\x0a"))))
(check-sat)
