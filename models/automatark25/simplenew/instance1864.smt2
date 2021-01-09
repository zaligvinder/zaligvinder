(declare-const X String)
; urn:[a-z0-9]{1}[a-z0-9\-]{1,31}:[a-z0-9_,:=@;!'%/#\(\)\+\-\.\$\*\?]+
(assert (not (str.in.re X (re.++ (str.to.re "urn:") ((_ re.loop 1 1) (re.union (re.range "a" "z") (re.range "0" "9"))) ((_ re.loop 1 31) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "-"))) (str.to.re ":") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "_") (str.to.re ",") (str.to.re ":") (str.to.re "=") (str.to.re "@") (str.to.re ";") (str.to.re "!") (str.to.re "'") (str.to.re "%") (str.to.re "/") (str.to.re "#") (str.to.re "(") (str.to.re ")") (str.to.re "+") (str.to.re "-") (str.to.re ".") (str.to.re "$") (str.to.re "*") (str.to.re "?"))) (str.to.re "\x0a")))))
(check-sat)
