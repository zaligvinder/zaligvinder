(declare-const X String)
; /\x2fb\x2fshoe\x2f[0-9]{3,5}$/U
(assert (not (str.in.re X (re.++ (str.to.re "//b/shoe/") ((_ re.loop 3 5) (re.range "0" "9")) (str.to.re "/U\x0a")))))
; /filename=[^\n]*\x2eurl/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".url/i\x0a"))))
(check-sat)
