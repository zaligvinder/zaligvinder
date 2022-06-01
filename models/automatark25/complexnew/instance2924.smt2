(declare-const X String)
; thereHost\u{3A}select\u{2F}Getwww\u{2e}2-seek\u{2e}com\u{2f}search
(assert (not (str.in_re X (str.to_re "thereHost:select/Getwww.2-seek.com/search\u{a}"))))
; /^[a-zA-Z0-9]+$/
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "/\u{a}")))))
(check-sat)
