(declare-const X String)
; /filename=[^\n]*\x2ejnlp/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".jnlp/i\x0a")))))
; /^\/[0-9]{8}\.html$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re ".html/U\x0a")))))
(check-sat)
