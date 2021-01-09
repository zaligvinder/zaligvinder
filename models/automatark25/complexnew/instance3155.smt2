(declare-const X String)
; ^((0[1-9])|(1[0-2]))\/*((2011)|(20[1-9][1-9]))$
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (re.* (str.to.re "/")) (re.union (str.to.re "2011") (re.++ (str.to.re "20") (re.range "1" "9") (re.range "1" "9"))) (str.to.re "\x0a"))))
; passcorrect\x3B\s+\x2Fcbn\x2Fnode=Host\x3A\x3Fsearch\x3Dversion
(assert (str.in.re X (re.++ (str.to.re "passcorrect;") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/cbn/node=Host:?search=version\x0a"))))
; linkautomatici\x2Ecom\dBasic\d+Host\x3AFloodedFictionalUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "linkautomatici.com") (re.range "0" "9") (str.to.re "Basic") (re.+ (re.range "0" "9")) (str.to.re "Host:FloodedFictionalUser-Agent:\x0a"))))
(check-sat)
