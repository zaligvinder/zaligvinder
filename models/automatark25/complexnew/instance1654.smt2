(declare-const X String)
; ^\d+(\,\d{1,2})?$
(assert (not (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to.re ",") ((_ re.loop 1 2) (re.range "0" "9")))) (str.to.re "\x0a")))))
; ^([EV])?\d{3,3}(\.\d{1,2})?$
(assert (not (str.in.re X (re.++ (re.opt (re.union (str.to.re "E") (str.to.re "V"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (str.to.re "\x0a")))))
; /\?new\=.*?\:.*?\&v\=\d\.\d\.\d\&av\=/U
(assert (not (str.in.re X (re.++ (str.to.re "/?new=") (re.* re.allchar) (str.to.re ":") (re.* re.allchar) (str.to.re "&v=") (re.range "0" "9") (str.to.re ".") (re.range "0" "9") (str.to.re ".") (re.range "0" "9") (str.to.re "&av=/U\x0a")))))
; \({1}[0-9]{3}\){1}\-{1}[0-9]{3}\-{1}[0-9]{4}
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (str.to.re "(")) ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 1 1) (str.to.re ")")) ((_ re.loop 1 1) (str.to.re "-")) ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 1 1) (str.to.re "-")) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
; \x7D\x7BTrojan\x3ASubject\x3Aversion
(assert (not (str.in.re X (str.to.re "}{Trojan:Subject:version\x0a"))))
(check-sat)
