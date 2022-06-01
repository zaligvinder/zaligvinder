(declare-const X String)
; /^User-Agent\u{3a}\u{20}[A-Z]{9}\u{d}\u{a}/Hm
(assert (str.in_re X (re.++ (str.to_re "/User-Agent: ") ((_ re.loop 9 9) (re.range "A" "Z")) (str.to_re "\u{d}\u{a}/Hm\u{a}"))))
(check-sat)
