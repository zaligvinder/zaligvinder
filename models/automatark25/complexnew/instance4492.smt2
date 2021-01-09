(declare-const X String)
; \d[\d\,\.]+
(assert (str.in.re X (re.++ (re.range "0" "9") (re.+ (re.union (re.range "0" "9") (str.to.re ",") (str.to.re "."))) (str.to.re "\x0a"))))
; AD\s+c\.goclick\.com\w+asdbiz\x2Ebizfrom\x7croogoo\x7cCurrent
(assert (not (str.in.re X (re.++ (str.to.re "AD") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "c.goclick.com") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "asdbiz.bizfrom|roogoo|Current\x0a")))))
(check-sat)
