(declare-const X String)
; aboutKeyloggeras\u{2E}starware\u{2E}comProtoHost\u{3a}\.asp\?brand=
(assert (str.in_re X (str.to_re "aboutKeyloggeras.starware.comProtoHost:.asp?brand=\u{a}")))
; /\u{2e}mks([\?\u{5c}\u{2f}]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.mks") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
(check-sat)
