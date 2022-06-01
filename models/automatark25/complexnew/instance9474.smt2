(declare-const X String)
; Mirar_KeywordContent
(assert (not (str.in_re X (str.to_re "Mirar_KeywordContent\u{13}\u{a}"))))
; (\d{4,6})
(assert (not (str.in_re X (re.++ ((_ re.loop 4 6) (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)
