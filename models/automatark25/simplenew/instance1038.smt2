(declare-const X String)
; Spy\dccecaedbebfcaf\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "Spy") (re.range "0" "9") (str.to_re "ccecaedbebfcaf.com\u{a}")))))
(check-sat)
