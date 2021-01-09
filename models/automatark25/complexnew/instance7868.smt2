(declare-const X String)
; Host\x3A.*NETObserve\d+Host\x3aohgdhkzfhdzo\x2fuwpOK\r\n
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.* re.allchar) (str.to.re "NETObserve") (re.+ (re.range "0" "9")) (str.to.re "Host:ohgdhkzfhdzo/uwpOK\x0d\x0a\x0a")))))
; (^(((\d)|(\d\d)|(\d\d\d))(\xA0|\x20))*((\d)|(\d\d)|(\d\d\d))([,.]\d*)?$)
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.* (re.++ (re.union (re.range "0" "9") (re.++ (re.range "0" "9") (re.range "0" "9")) (re.++ (re.range "0" "9") (re.range "0" "9") (re.range "0" "9"))) (re.union (str.to.re "\xa0") (str.to.re " ")))) (re.union (re.range "0" "9") (re.++ (re.range "0" "9") (re.range "0" "9")) (re.++ (re.range "0" "9") (re.range "0" "9") (re.range "0" "9"))) (re.opt (re.++ (re.union (str.to.re ",") (str.to.re ".")) (re.* (re.range "0" "9")))))))
(check-sat)
