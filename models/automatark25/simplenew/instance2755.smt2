(declare-const X String)
; /\u{2e}swf([\u{3f}\u{2f}]|$)/Uim
(assert (str.in_re X (re.++ (str.to_re "/.swf") (re.union (str.to_re "?") (str.to_re "/")) (str.to_re "/Uim\u{a}"))))
(check-sat)
