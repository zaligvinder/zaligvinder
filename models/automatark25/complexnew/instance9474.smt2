(declare-const X String)
; Mirar_KeywordContent
(assert (not (str.in.re X (str.to.re "Mirar_KeywordContent\x13\x0a"))))
; (\d{4,6})
(assert (not (str.in.re X (re.++ ((_ re.loop 4 6) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
