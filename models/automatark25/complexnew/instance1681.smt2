(declare-const X String)
; Host\u{3a}\u{7D}\u{7B}Port\u{3A}www\u{2E}instafinder\u{2E}com
(assert (str.in_re X (str.to_re "Host:}{Port:www.instafinder.com\u{a}")))
; ^[0-9]{5}([\s-]{1}[0-9]{4})?$
(assert (str.in_re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.opt (re.++ ((_ re.loop 1 1) (re.union (str.to_re "-") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 4 4) (re.range "0" "9")))) (str.to_re "\u{a}"))))
; "^[A-Z]{1}\d{7}$
(assert (not (str.in_re X (re.++ (str.to_re "\u{22}") ((_ re.loop 1 1) (re.range "A" "Z")) ((_ re.loop 7 7) (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)
