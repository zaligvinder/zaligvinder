(declare-const X String)
; wlpgskmv\u{2f}lwzo\.qv#www\u{2E}kliksearch\u{2E}com
(assert (not (str.in_re X (str.to_re "wlpgskmv/lwzo.qv#www.kliksearch.com\u{a}"))))
(check-sat)
