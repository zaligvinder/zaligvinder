(declare-const X String)
; \$(\d*)??,??(\d*)??,??(\d*)\.(\d*)
(assert (str.in.re X (re.++ (str.to.re "$") (re.opt (re.* (re.range "0" "9"))) (re.opt (str.to.re ",")) (re.opt (re.* (re.range "0" "9"))) (re.opt (str.to.re ",")) (re.* (re.range "0" "9")) (str.to.re ".") (re.* (re.range "0" "9")) (str.to.re "\x0a"))))
; ^(0{0,1}[1-9]|[12][0-9]|3[01])[- /.](0{0,1}[1-9]|1[012])[- /.](\d{2}|\d{4})$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9")) (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "1")))) (re.union (str.to.re "-") (str.to.re " ") (str.to.re "/") (str.to.re ".")) (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.union (str.to.re "0") (str.to.re "1") (str.to.re "2")))) (re.union (str.to.re "-") (str.to.re " ") (str.to.re "/") (str.to.re ".")) (re.union ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 4 4) (re.range "0" "9"))) (str.to.re "\x0a")))))
; ^A([0-9]|10)$
(assert (str.in.re X (re.++ (str.to.re "A") (re.union (re.range "0" "9") (str.to.re "10")) (str.to.re "\x0a"))))
; [^a-zA-Z0-9]+
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "\x0a")))))
; wowokay\d+FTP\s+Host\x3AFiltered\x22reaction\x2Etxt\x22
(assert (not (str.in.re X (re.++ (str.to.re "wowokay") (re.+ (re.range "0" "9")) (str.to.re "FTP") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:Filtered\x22reaction.txt\x22\x0a")))))
(check-sat)
