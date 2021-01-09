(declare-const X String)
; (^[0-9]{0,10}$)
(assert (str.in.re X (re.++ ((_ re.loop 0 10) (re.range "0" "9")) (str.to.re "\x0a"))))
; \d{1,2}d \d{1,2}h
(assert (not (str.in.re X (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re "d ") ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re "h\x0a")))))
; www\x2Emirarsearch\x2Ecom
(assert (str.in.re X (str.to.re "www.mirarsearch.com\x0a")))
(check-sat)
