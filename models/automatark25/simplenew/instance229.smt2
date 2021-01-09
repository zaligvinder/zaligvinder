(declare-const X String)
; (antifraud\.ref\.num)[0-9]*(@citibank\.com)
(assert (str.in.re X (re.++ (str.to.re "antifraud.ref.num") (re.* (re.range "0" "9")) (str.to.re "@citibank.com\x0a"))))
(check-sat)
