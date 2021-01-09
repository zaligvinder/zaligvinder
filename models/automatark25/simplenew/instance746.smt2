(declare-const X String)
; wlpgskmv\x2flwzo\.qv#www\x2Ekliksearch\x2Ecom
(assert (not (str.in.re X (str.to.re "wlpgskmv/lwzo.qv#www.kliksearch.com\x0a"))))
(check-sat)
