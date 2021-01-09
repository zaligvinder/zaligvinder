(declare-const X String)
; Spy\dccecaedbebfcaf\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Spy") (re.range "0" "9") (str.to.re "ccecaedbebfcaf.com\x0a")))))
(check-sat)
