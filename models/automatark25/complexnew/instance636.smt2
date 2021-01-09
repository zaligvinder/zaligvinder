(declare-const X String)
; ^([0-9]{1,2},([0-9]{2},)*[0-9]{3}|[0-9]+)$
(assert (not (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re ",") (re.* (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re ","))) ((_ re.loop 3 3) (re.range "0" "9"))) (re.+ (re.range "0" "9"))) (str.to.re "\x0a")))))
; /php\?jnlp\=[a-f0-9]{10}($|\x2c)/U
(assert (not (str.in.re X (re.++ (str.to.re "/php?jnlp=") ((_ re.loop 10 10) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re ",/U\x0a")))))
; /\x2esmi([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.smi") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
