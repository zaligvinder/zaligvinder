(declare-const X String)
; thereHost\u{3A}select\u{2F}Getwww\u{2e}2-seek\u{2e}com\u{2f}search
(assert (str.in_re X (str.to_re "thereHost:select/Getwww.2-seek.com/search\u{a}")))
(check-sat)
