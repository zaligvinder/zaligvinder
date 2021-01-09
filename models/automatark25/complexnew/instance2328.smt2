(declare-const X String)
; ^((\+)?(\d{2}[-]))?([0])?(\d{10}){1}?$
(assert (not (str.in.re X (re.++ (re.opt (re.++ (re.opt (str.to.re "+")) ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-"))) (re.opt (str.to.re "0")) ((_ re.loop 1 1) ((_ re.loop 10 10) (re.range "0" "9"))) (str.to.re "\x0a")))))
; SecureNet.*\x2Fsearchfast\x2F
(assert (str.in.re X (re.++ (str.to.re "SecureNet") (re.* re.allchar) (str.to.re "/searchfast/\x0a"))))
; /^Referer\x3a\x20http\x3a\x2f\x2f[^\n]+\/\d{10,20}\x0d\x0a/Hm
(assert (str.in.re X (re.++ (str.to.re "/Referer: http://") (re.+ (re.comp (str.to.re "\x0a"))) (str.to.re "/") ((_ re.loop 10 20) (re.range "0" "9")) (str.to.re "\x0d\x0a/Hm\x0a"))))
(check-sat)
