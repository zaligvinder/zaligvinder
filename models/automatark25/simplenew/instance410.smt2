(declare-const X String)
; /^\u{2f}j\u{2f}[a-f0-9]{32}\u{2f}0001$/U
(assert (str.in_re X (re.++ (str.to_re "//j/") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re "/0001/U\u{a}"))))
(check-sat)
