(declare-const X String)
; Host\x3A\s+Boss\s+media\x2Etop-banners\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Boss") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "media.top-banners.com\x0a")))))
; &[a-zA-Z]+\d{0,3};
(assert (str.in.re X (re.++ (str.to.re "&") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 0 3) (re.range "0" "9")) (str.to.re ";\x0a"))))
; .*[a-zA-Z]$
(assert (str.in.re X (re.++ (re.* re.allchar) (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to.re "\x0a"))))
; /^(\x75|\x2d|\x2f|\x73|\xa2|\x2e|\x24|\x74)/sR
(assert (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "u") (str.to.re "-") (str.to.re "/") (str.to.re "s") (str.to.re "\xa2") (str.to.re ".") (str.to.re "$") (str.to.re "t")) (str.to.re "/sR\x0a"))))
; ([0-9a-z_-]+[\.][0-9a-z_-]{1,3})$
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.+ (re.union (re.range "0" "9") (re.range "a" "z") (str.to.re "_") (str.to.re "-"))) (str.to.re ".") ((_ re.loop 1 3) (re.union (re.range "0" "9") (re.range "a" "z") (str.to.re "_") (str.to.re "-"))))))
(check-sat)
