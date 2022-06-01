(declare-const X String)
; FCTB1\stoolbar\.anwb\.nlrichfind\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "FCTB1") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "toolbar.anwb.nlrichfind.com\u{a}"))))
(check-sat)
