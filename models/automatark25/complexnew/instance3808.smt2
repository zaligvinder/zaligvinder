(declare-const X String)
; Subject\x3Alinkautomatici\x2EcomReferer\x3Awww\x2Esearchreslt\x2Ecom
(assert (str.in.re X (str.to.re "Subject:linkautomatici.comReferer:www.searchreslt.com\x0a")))
; <h([1-6])>([^<]*)</h([1-6])>
(assert (not (str.in.re X (re.++ (str.to.re "<h") (re.range "1" "6") (str.to.re ">") (re.* (re.comp (str.to.re "<"))) (str.to.re "</h") (re.range "1" "6") (str.to.re ">\x0a")))))
; ^([a-z0-9]{32})$
(assert (str.in.re X (re.++ ((_ re.loop 32 32) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "\x0a"))))
(check-sat)
