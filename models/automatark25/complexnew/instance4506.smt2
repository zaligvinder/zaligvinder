(declare-const X String)
; ^\d{5}$
(assert (not (str.in.re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "\x0a")))))
; www\x2Emirarsearch\x2Ecom
(assert (not (str.in.re X (str.to.re "www.mirarsearch.com\x0a"))))
(check-sat)
