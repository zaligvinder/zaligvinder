(declare-const X String)
; trustyfiles\x2Ecom\d+lnzzlnbk\x2fpkrm\.fin\s+
(assert (str.in.re X (re.++ (str.to.re "trustyfiles.com") (re.+ (re.range "0" "9")) (str.to.re "lnzzlnbk/pkrm.fin") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a"))))
(check-sat)
