(declare-const X String)
; /filename\=[a-z0-9]{24}\.exe/H
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") ((_ re.loop 24 24) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".exe/H\x0a")))))
; ^( [1-9]|[1-9]|0[1-9]|10|11|12)[0-5]\d$
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re " ") (re.range "1" "9")) (re.range "1" "9") (re.++ (str.to.re "0") (re.range "1" "9")) (str.to.re "10") (str.to.re "11") (str.to.re "12")) (re.range "0" "5") (re.range "0" "9") (str.to.re "\x0a"))))
; ^((\+)?(\d{2}[-]))?([0])?(\d{10}){1}?$
(assert (str.in.re X (re.++ (re.opt (re.++ (re.opt (str.to.re "+")) ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-"))) (re.opt (str.to.re "0")) ((_ re.loop 1 1) ((_ re.loop 10 10) (re.range "0" "9"))) (str.to.re "\x0a"))))
; Host\x3A\w+www.*ToolbartheServer\x3Awww\x2Esearchreslt\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "www") (re.* re.allchar) (str.to.re "ToolbartheServer:www.searchreslt.com\x0a")))))
; 1?[ \.\-\+]?[(]?([0-9]{3})?[)]?[ \.\-\+]?[0-9]{3}[ \.\-\+]?[0-9]{4}
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "1")) (re.opt (re.union (str.to.re " ") (str.to.re ".") (str.to.re "-") (str.to.re "+"))) (re.opt (str.to.re "(")) (re.opt ((_ re.loop 3 3) (re.range "0" "9"))) (re.opt (str.to.re ")")) (re.opt (re.union (str.to.re " ") (str.to.re ".") (str.to.re "-") (str.to.re "+"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re ".") (str.to.re "-") (str.to.re "+"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
