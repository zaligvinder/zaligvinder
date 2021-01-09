(declare-const X String)
; Host\x3a\w+Host\x3A\d+anHost\x3AspasHost\x3A
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re "anHost:spasHost:\x0a"))))
; ^[1-9]+[0-9]*$
(assert (str.in.re X (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")) (str.to.re "\x0a"))))
; ^([01][0-9][0-9]|2[0-4][0-9]|25[0-5].[01][0-9][0-9]|2[0-4][0-9]|25[0-5].[01][0-9][0-9]|2[0-4][0-9]|25[0-5].[01][0-9][0-9]|2[0-4][0-9]|25[0-5])$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.union (str.to.re "0") (str.to.re "1")) (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "25") (re.range "0" "5") re.allchar (re.union (str.to.re "0") (str.to.re "1")) (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "25") (re.range "0" "5") re.allchar (re.union (str.to.re "0") (str.to.re "1")) (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "25") (re.range "0" "5") re.allchar (re.union (str.to.re "0") (str.to.re "1")) (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "25") (re.range "0" "5"))) (str.to.re "\x0a")))))
; Host\x3A.*www\x2e2-seek\x2ecom\x2fsearch
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.* re.allchar) (str.to.re "www.2-seek.com/search\x0a"))))
(check-sat)
