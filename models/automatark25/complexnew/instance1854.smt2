(declare-const X String)
; \(([0-9]{2}|0{1}((x|[0-9]){2}[0-9]{2}))\)\s*[0-9]{3,4}[- ]*[0-9]{4}
(assert (not (str.in.re X (re.++ (str.to.re "(") (re.union ((_ re.loop 2 2) (re.range "0" "9")) (re.++ ((_ re.loop 1 1) (str.to.re "0")) ((_ re.loop 2 2) (re.union (str.to.re "x") (re.range "0" "9"))) ((_ re.loop 2 2) (re.range "0" "9")))) (str.to.re ")") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 3 4) (re.range "0" "9")) (re.* (re.union (str.to.re "-") (str.to.re " "))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
; [cC]{1}[0-9]{0,7}
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (re.union (str.to.re "c") (str.to.re "C"))) ((_ re.loop 0 7) (re.range "0" "9")) (str.to.re "\x0a")))))
; ^[^<>`~!/@\#}$%:;)(_^{&*=|'+]+$
(assert (not (str.in.re X (re.++ (re.+ (re.union (str.to.re "<") (str.to.re ">") (str.to.re "`") (str.to.re "~") (str.to.re "!") (str.to.re "/") (str.to.re "@") (str.to.re "#") (str.to.re "}") (str.to.re "$") (str.to.re "%") (str.to.re ":") (str.to.re ";") (str.to.re ")") (str.to.re "(") (str.to.re "_") (str.to.re "^") (str.to.re "{") (str.to.re "&") (str.to.re "*") (str.to.re "=") (str.to.re "|") (str.to.re "'") (str.to.re "+"))) (str.to.re "\x0a")))))
(check-sat)
