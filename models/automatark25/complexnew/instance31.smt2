(declare-const X String)
; cdpnode=\w+Authorization\x3aname\x2ecnnic\x2ecn
(assert (not (str.in.re X (re.++ (str.to.re "cdpnode=") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Authorization:name.cnnic.cn\x0a")))))
; /^\x2f[a-z0-9]{51}$/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 51 51) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "/Ui\x0a")))))
; ^([0-9]{1,2},([0-9]{2},)*[0-9]{3}|[0-9]+)$
(assert (not (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re ",") (re.* (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re ","))) ((_ re.loop 3 3) (re.range "0" "9"))) (re.+ (re.range "0" "9"))) (str.to.re "\x0a")))))
(check-sat)
