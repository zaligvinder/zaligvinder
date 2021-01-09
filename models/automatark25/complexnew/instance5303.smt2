(declare-const X String)
; \x22Thewebsearch\.getmirar\.com
(assert (str.in.re X (str.to.re "\x22Thewebsearch.getmirar.com\x0a")))
; /^\/\d{9,10}\/1\d{9}\.jar$/U
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 9 10) (re.range "0" "9")) (str.to.re "/1") ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re ".jar/U\x0a"))))
(check-sat)
