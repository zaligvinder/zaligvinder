(declare-const X String)
; Host\x3A\w+www.*ToolbartheServer\x3Awww\x2Esearchreslt\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "www") (re.* re.allchar) (str.to.re "ToolbartheServer:www.searchreslt.com\x0a")))))
; ^07([\d]{3})[(\D\s)]?[\d]{3}[(\D\s)]?[\d]{3}$
(assert (not (str.in.re X (re.++ (str.to.re "07") ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re "(") (re.comp (re.range "0" "9")) (str.to.re ")") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re "(") (re.comp (re.range "0" "9")) (str.to.re ")") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
