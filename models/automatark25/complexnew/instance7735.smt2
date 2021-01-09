(declare-const X String)
; ^(9\d{2})([ \-]?)([7]\d|8[0-8])([ \-]?)(\d{4})$
(assert (str.in.re X (re.++ (re.opt (re.union (str.to.re " ") (str.to.re "-"))) (re.union (re.++ (str.to.re "7") (re.range "0" "9")) (re.++ (str.to.re "8") (re.range "0" "8"))) (re.opt (re.union (str.to.re " ") (str.to.re "-"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a9") ((_ re.loop 2 2) (re.range "0" "9")))))
; /Referer\x3a\s*?http\x3a\x2f{2}[a-z0-9\x2e\x2d]+\x2fs\x2f\x3fk\x3d/Hi
(assert (str.in.re X (re.++ (str.to.re "/Referer:") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "http:") ((_ re.loop 2 2) (str.to.re "/")) (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re ".") (str.to.re "-"))) (str.to.re "/s/?k=/Hi\x0a"))))
; url=\swww\x2Ealfacleaner\x2Ecom\d+Host\x3A\x2Fproducts\x2Fspyblocs\x2F
(assert (str.in.re X (re.++ (str.to.re "url=") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.alfacleaner.com") (re.+ (re.range "0" "9")) (str.to.re "Host:/products/spyblocs/\x13\x0a"))))
; Host\x3A\w+wwwfromToolbartheServer\x3Awww\x2Esearchreslt\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "wwwfromToolbartheServer:www.searchreslt.com\x0a")))))
; ^([a-zA-z\s]{4,32})$
(assert (str.in.re X (re.++ ((_ re.loop 4 32) (re.union (re.range "a" "z") (re.range "A" "z") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a"))))
(check-sat)
