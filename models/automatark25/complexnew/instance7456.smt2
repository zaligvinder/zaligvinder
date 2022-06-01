(declare-const X String)
; (^[0-9]{0,10}$)
(assert (str.in_re X (re.++ ((_ re.loop 0 10) (re.range "0" "9")) (str.to_re "\u{a}"))))
; \d{1,2}d \d{1,2}h
(assert (not (str.in_re X (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (str.to_re "d ") ((_ re.loop 1 2) (re.range "0" "9")) (str.to_re "h\u{a}")))))
; www\u{2E}mirarsearch\u{2E}com
(assert (str.in_re X (str.to_re "www.mirarsearch.com\u{a}")))
(check-sat)
