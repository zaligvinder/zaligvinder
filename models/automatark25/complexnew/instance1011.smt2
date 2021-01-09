(declare-const X String)
; /^\/amor\d{0,2}\.jar/U
(assert (not (str.in.re X (re.++ (str.to.re "//amor") ((_ re.loop 0 2) (re.range "0" "9")) (str.to.re ".jar/U\x0a")))))
; ^([0-9]*)+(,[0-9]+)+$
(assert (not (str.in.re X (re.++ (re.+ (re.* (re.range "0" "9"))) (re.+ (re.++ (str.to.re ",") (re.+ (re.range "0" "9")))) (str.to.re "\x0a")))))
(check-sat)
