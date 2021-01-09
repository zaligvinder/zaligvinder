(declare-const X String)
; linkautomatici\x2Ecom\dBasic\d+Host\x3AFloodedFictionalUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "linkautomatici.com") (re.range "0" "9") (str.to.re "Basic") (re.+ (re.range "0" "9")) (str.to.re "Host:FloodedFictionalUser-Agent:\x0a")))))
(check-sat)
