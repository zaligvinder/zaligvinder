(declare-const X String)
; /\u{2f}[a-z0-9]+\.php\?php\u{3d}receipt$/Ui
(assert (str.in_re X (re.++ (str.to_re "//") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re ".php?php=receipt/Ui\u{a}"))))
(check-sat)
