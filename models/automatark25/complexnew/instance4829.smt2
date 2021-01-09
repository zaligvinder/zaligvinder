(declare-const X String)
; ".*?"|".*$|'.*?'|'.*$
(assert (str.in.re X (re.union (re.++ (str.to.re "\x22") (re.* re.allchar) (str.to.re "\x22")) (re.++ (str.to.re "\x22") (re.* re.allchar)) (re.++ (str.to.re "'") (re.* re.allchar) (str.to.re "'")) (re.++ (str.to.re "'") (re.* re.allchar) (str.to.re "\x0a")))))
; DigExt.*\x23\x23\x23\x23
(assert (not (str.in.re X (re.++ (str.to.re "DigExt") (re.* re.allchar) (str.to.re "####\x0a")))))
; ^-?((([0-9]{1,3},)?([0-9]{3},)*?[0-9]{3})|([0-9]{1,3}))\.[0-9]*$
(assert (str.in.re X (re.++ (re.opt (str.to.re "-")) (re.union (re.++ (re.opt (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ","))) (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ","))) ((_ re.loop 3 3) (re.range "0" "9"))) ((_ re.loop 1 3) (re.range "0" "9"))) (str.to.re ".") (re.* (re.range "0" "9")) (str.to.re "\x0a"))))
; ^([0-1]?[0-9]|[2][0-3]):([0-5][0-9]):([0-5][0-9])$
(assert (str.in.re X (re.++ (re.union (re.++ (re.opt (re.range "0" "1")) (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (str.to.re "::\x0a") (re.range "0" "5") (re.range "0" "9") (re.range "0" "5") (re.range "0" "9"))))
(check-sat)
