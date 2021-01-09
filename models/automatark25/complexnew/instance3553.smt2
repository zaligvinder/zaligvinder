(declare-const X String)
; products\s+Host\x3ADAPCURLBlaze
(assert (not (str.in.re X (re.++ (str.to.re "products") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:DAPCURLBlaze\x0a")))))
; <!--[\\.|\\W|\\w]*?-->
(assert (str.in.re X (re.++ (str.to.re "<!--") (re.* (re.union (str.to.re "\x5c") (str.to.re ".") (str.to.re "|") (str.to.re "W") (str.to.re "w"))) (str.to.re "-->\x0a"))))
; (\w+([-+.']\w+)*@(gmail.com))
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.* (re.++ (re.union (str.to.re "-") (str.to.re "+") (str.to.re ".") (str.to.re "'")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))))) (str.to.re "@gmail") re.allchar (str.to.re "com")))))
; ^[A-Za-z]{1,2}[0-9A-Za-z]{1,2}[ ]?[0-9]{0,1}[A-Za-z]{2}$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 2) (re.union (re.range "A" "Z") (re.range "a" "z"))) ((_ re.loop 1 2) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z"))) (re.opt (str.to.re " ")) (re.opt (re.range "0" "9")) ((_ re.loop 2 2) (re.union (re.range "A" "Z") (re.range "a" "z"))) (str.to.re "\x0a")))))
; ^-?([1-8]?[1-9]|[1-9]0)\.{1}\d{1,6}
(assert (str.in.re X (re.++ (re.opt (str.to.re "-")) (re.union (re.++ (re.opt (re.range "1" "8")) (re.range "1" "9")) (re.++ (re.range "1" "9") (str.to.re "0"))) ((_ re.loop 1 1) (str.to.re ".")) ((_ re.loop 1 6) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
