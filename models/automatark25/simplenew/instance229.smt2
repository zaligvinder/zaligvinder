(declare-const X String)
; (antifraud\.ref\.num)[0-9]*(@citibank\.com)
(assert (str.in_re X (re.++ (str.to_re "antifraud.ref.num") (re.* (re.range "0" "9")) (str.to_re "@citibank.com\u{a}"))))
(check-sat)
