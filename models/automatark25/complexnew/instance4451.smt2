(declare-const X String)
; ([0]|[-]?[0]\.[0-9]+)|([-]?([1-9]+\.[0-9]+))|([-]?[1-9]+)
(assert (str.in.re X (re.union (re.++ (re.opt (str.to.re "-")) (re.+ (re.range "1" "9")) (str.to.re ".") (re.+ (re.range "0" "9"))) (re.++ (str.to.re "\x0a") (re.opt (str.to.re "-")) (re.+ (re.range "1" "9"))) (str.to.re "0") (re.++ (re.opt (str.to.re "-")) (str.to.re "0.") (re.+ (re.range "0" "9"))))))
; \x2Fsearchfast\x2F\s+Host\x3A\s+
(assert (str.in.re X (re.++ (str.to.re "/searchfast/") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a"))))
; ^[a-z][a-z0-9\.,\-_]{5,31}$
(assert (str.in.re X (re.++ (re.range "a" "z") ((_ re.loop 5 31) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re ".") (str.to.re ",") (str.to.re "-") (str.to.re "_"))) (str.to.re "\x0a"))))
(check-sat)
