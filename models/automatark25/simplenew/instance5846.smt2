(declare-const X String)
; Host\x3A\w+wwwfromToolbartheServer\x3Awww\x2Esearchreslt\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "wwwfromToolbartheServer:www.searchreslt.com\x0a"))))
(check-sat)
