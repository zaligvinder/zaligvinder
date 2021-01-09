(declare-const X String)
; 195\.225\.\<title\>Actual
(assert (str.in.re X (str.to.re "195.225.<title>Actual\x0a")))
; jsp\s+pjpoptwql\x2frlnj[^\n\r]*Host\x3A
(assert (str.in.re X (re.++ (str.to.re "jsp") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "pjpoptwql/rlnj") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Host:\x0a"))))
; Host\x3A\w+www.*ToolbartheServer\x3Awww\x2Esearchreslt\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "www") (re.* re.allchar) (str.to.re "ToolbartheServer:www.searchreslt.com\x0a")))))
; ^(100(\.0{0,2}?)?$|([1-9]|[1-9][0-9])(\.\d{1,2})?)$
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "100") (re.opt (re.++ (str.to.re ".") ((_ re.loop 0 2) (str.to.re "0"))))) (re.++ (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (re.range "1" "9") (re.range "0" "9"))) (str.to.re "\x0a"))))
(check-sat)
