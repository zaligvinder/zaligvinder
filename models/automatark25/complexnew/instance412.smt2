(declare-const X String)
; /\u{2e}swf([\?\u{5c}\u{2f}]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.swf") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; ConectadoHost\u{3a}as\.cometsystems\.com
(assert (str.in_re X (str.to_re "ConectadoHost:as.cometsystems.com\u{a}")))
(check-sat)
