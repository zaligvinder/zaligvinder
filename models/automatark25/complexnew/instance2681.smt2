(declare-const X String)
; ^[a-z0-9_.-]*@[a-z0-9-]+(.[a-z]{2,4})+$
(assert (str.in.re X (re.++ (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "_") (str.to.re ".") (str.to.re "-"))) (str.to.re "@") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "-"))) (re.+ (re.++ re.allchar ((_ re.loop 2 4) (re.range "a" "z")))) (str.to.re "\x0a"))))
; ^((\+){1}91){1}[1-9]{1}[0-9]{9}$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (re.++ ((_ re.loop 1 1) (str.to.re "+")) (str.to.re "91"))) ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re "\x0a")))))
; YWRtaW46cGFzc3dvcmQ\s+www\x2Ealfacleaner\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "YWRtaW46cGFzc3dvcmQ") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.alfacleaner.com\x0a")))))
; /^range\x7c\d+\x7c\d+\x7C[a-z0-9]+\x2E[a-z]{2,3}\x7C[a-z0-9]+\x7C/
(assert (str.in.re X (re.++ (str.to.re "/range|") (re.+ (re.range "0" "9")) (str.to.re "|") (re.+ (re.range "0" "9")) (str.to.re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".") ((_ re.loop 2 3) (re.range "a" "z")) (str.to.re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "|/\x0a"))))
; ^[+]?100(\.0{1,2})?%?$|^[+]?\d{1,2}(\.\d{1,2})?%?$
(assert (str.in.re X (re.union (re.++ (re.opt (str.to.re "+")) (str.to.re "100") (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 2) (str.to.re "0")))) (re.opt (str.to.re "%"))) (re.++ (re.opt (str.to.re "+")) ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (re.opt (str.to.re "%")) (str.to.re "\x0a")))))
(check-sat)
