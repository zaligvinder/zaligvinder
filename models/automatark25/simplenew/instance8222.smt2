(declare-const X String)
; www\u{2E}mirarsearch\u{2E}com
(assert (str.in_re X (str.to_re "www.mirarsearch.com\u{a}")))
(check-sat)
