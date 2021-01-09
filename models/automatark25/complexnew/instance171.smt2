(declare-const X String)
; /\x2ep2g([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.p2g") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; Host\x3A\w+wwwfromToolbartheServer\x3Awww\x2Esearchreslt\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "wwwfromToolbartheServer:www.searchreslt.com\x0a")))))
; e2give\.com\s+data2\.activshopper\.com
(assert (not (str.in.re X (re.++ (str.to.re "e2give.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "data2.activshopper.com\x0a")))))
; <!\[CDATA\[([^\]]*)\]\]>
(assert (not (str.in.re X (re.++ (str.to.re "<![CDATA[") (re.* (re.comp (str.to.re "]"))) (str.to.re "]]>\x0a")))))
; /filename=[^\n]*\x2em4p/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".m4p/i\x0a"))))
(check-sat)
