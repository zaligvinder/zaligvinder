(declare-const X String)
; /\u{2f}kills\u{2e}txt\u{3f}(t\d|p)\u{3d}\d{6}$/U
(assert (not (str.in_re X (re.++ (str.to_re "//kills.txt?") (re.union (re.++ (str.to_re "t") (re.range "0" "9")) (str.to_re "p")) (str.to_re "=") ((_ re.loop 6 6) (re.range "0" "9")) (str.to_re "/U\u{a}")))))
(check-sat)
