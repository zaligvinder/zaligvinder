(declare-const X String)
; GamespyAttachedIndyReferer\x3AToolbarCurrent\x3BCIA
(assert (str.in.re X (str.to.re "GamespyAttachedIndyReferer:ToolbarCurrent;CIA\x0a")))
; /\x2fb\x2fshoe\x2f[0-9]{3,5}$/U
(assert (str.in.re X (re.++ (str.to.re "//b/shoe/") ((_ re.loop 3 5) (re.range "0" "9")) (str.to.re "/U\x0a"))))
(check-sat)
