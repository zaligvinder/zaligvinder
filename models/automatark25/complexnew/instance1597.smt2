(declare-const X String)
; Host\u{3A}\s+\u{2F}NFO\u{2C}RegisteredDeletingadfsgecoiwnf
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/NFO,RegisteredDeletingadfsgecoiwnf\u{1b}\u{a}"))))
; (^\d{3,4}\-\d{4}$)|(^\d{7,8}$)
(assert (str.in_re X (re.union (re.++ ((_ re.loop 3 4) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ ((_ re.loop 7 8) (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)
