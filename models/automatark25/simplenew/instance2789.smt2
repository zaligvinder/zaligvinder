(declare-const X String)
; select\x2FGet\s+Host\x3A.*ppcdomain\x2Eco\x2Euk
(assert (str.in.re X (re.++ (str.to.re "select/Get") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:") (re.* re.allchar) (str.to.re "ppcdomain.co.uk\x0a"))))
(check-sat)
