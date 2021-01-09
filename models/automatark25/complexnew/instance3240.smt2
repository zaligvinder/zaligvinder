(declare-const X String)
; /\/[a-z]{4}\.html\?h\=\d{6,7}$/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 4 4) (re.range "a" "z")) (str.to.re ".html?h=") ((_ re.loop 6 7) (re.range "0" "9")) (str.to.re "/Ui\x0a")))))
; trustyfiles\x2Ecom\d+lnzzlnbk\x2fpkrm\.fin\s+
(assert (str.in.re X (re.++ (str.to.re "trustyfiles.com") (re.+ (re.range "0" "9")) (str.to.re "lnzzlnbk/pkrm.fin") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a"))))
; ProAgentHost\x3aHost\x3AiOpuss_sq=aolsnssigninwininet
(assert (str.in.re X (str.to.re "ProAgentHost:Host:iOpuss_sq=aolsnssigninwininet\x0a")))
(check-sat)
