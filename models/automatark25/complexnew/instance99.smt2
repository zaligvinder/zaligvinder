(declare-const X String)
; www\x2Esogou\x2EcomUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "www.sogou.comUser-Agent:\x0a"))))
; ^((0[1-9])|(1[0-2]))\/*((2011)|(20[1-9][1-9]))$
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (re.* (str.to.re "/")) (re.union (str.to.re "2011") (re.++ (str.to.re "20") (re.range "1" "9") (re.range "1" "9"))) (str.to.re "\x0a")))))
(check-sat)
