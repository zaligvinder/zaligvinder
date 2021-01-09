(declare-const X String)
; ^[^<>`~!/@\#}$%:;)(_^{&*=|'+]+$
(assert (not (str.in.re X (re.++ (re.+ (re.union (str.to.re "<") (str.to.re ">") (str.to.re "`") (str.to.re "~") (str.to.re "!") (str.to.re "/") (str.to.re "@") (str.to.re "#") (str.to.re "}") (str.to.re "$") (str.to.re "%") (str.to.re ":") (str.to.re ";") (str.to.re ")") (str.to.re "(") (str.to.re "_") (str.to.re "^") (str.to.re "{") (str.to.re "&") (str.to.re "*") (str.to.re "=") (str.to.re "|") (str.to.re "'") (str.to.re "+"))) (str.to.re "\x0a")))))
(check-sat)
