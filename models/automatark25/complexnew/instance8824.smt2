(declare-const X String)
; ^(\d|,)*\.?\d*$
(assert (not (str.in.re X (re.++ (re.* (re.union (re.range "0" "9") (str.to.re ","))) (re.opt (str.to.re ".")) (re.* (re.range "0" "9")) (str.to.re "\x0a")))))
; urn:[a-z0-9]{1}[a-z0-9\-]{1,31}:[a-z0-9_,:=@;!'%/#\(\)\+\-\.\$\*\?]+
(assert (not (str.in.re X (re.++ (str.to.re "urn:") ((_ re.loop 1 1) (re.union (re.range "a" "z") (re.range "0" "9"))) ((_ re.loop 1 31) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "-"))) (str.to.re ":") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "_") (str.to.re ",") (str.to.re ":") (str.to.re "=") (str.to.re "@") (str.to.re ";") (str.to.re "!") (str.to.re "'") (str.to.re "%") (str.to.re "/") (str.to.re "#") (str.to.re "(") (str.to.re ")") (str.to.re "+") (str.to.re "-") (str.to.re ".") (str.to.re "$") (str.to.re "*") (str.to.re "?"))) (str.to.re "\x0a")))))
; ^[a-z0-9_.-]*@[a-z0-9-]+(.[a-z]{2,4})+$
(assert (not (str.in.re X (re.++ (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "_") (str.to.re ".") (str.to.re "-"))) (str.to.re "@") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "-"))) (re.+ (re.++ re.allchar ((_ re.loop 2 4) (re.range "a" "z")))) (str.to.re "\x0a")))))
; ^[a-zA-Z0-9]{1,20}$
(assert (str.in.re X (re.++ ((_ re.loop 1 20) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "\x0a"))))
(check-sat)
