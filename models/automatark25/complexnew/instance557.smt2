(declare-const X String)
; /^From\x3a[^\r\n]*SpyBuddy/smi
(assert (not (str.in.re X (re.++ (str.to.re "/From:") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "SpyBuddy/smi\x0a")))))
; ^(010|011|012)[0-9]{7}$
(assert (not (str.in.re X (re.++ ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a01") (re.union (str.to.re "0") (str.to.re "1") (str.to.re "2"))))))
; \{[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}\}
(assert (not (str.in.re X (re.++ (str.to.re "{") ((_ re.loop 8 8) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9"))) (str.to.re "-") ((_ re.loop 4 4) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9"))) (str.to.re "-") ((_ re.loop 4 4) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9"))) (str.to.re "-") ((_ re.loop 4 4) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9"))) (str.to.re "-") ((_ re.loop 12 12) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9"))) (str.to.re "}\x0a")))))
; ^\(?([0-9]{3})\)?[\s\.\-]*([0-9]{3})[\s\.\-]*([0-9]{4})$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "(")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re ")")) (re.* (re.union (str.to.re ".") (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.* (re.union (str.to.re ".") (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
