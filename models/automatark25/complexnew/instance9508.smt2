(declare-const X String)
; \r\nSTATUS\u{3A}User-Agent\u{3A}Host\u{3a}Referer\u{3A}
(assert (str.in_re X (str.to_re "\u{d}\u{a}STATUS:User-Agent:Host:Referer:\u{a}")))
; /\r\n\r\nsession\u{3a}\d{1,7}$/
(assert (str.in_re X (re.++ (str.to_re "/\u{d}\u{a}\u{d}\u{a}session:") ((_ re.loop 1 7) (re.range "0" "9")) (str.to_re "/\u{a}"))))
(check-sat)
