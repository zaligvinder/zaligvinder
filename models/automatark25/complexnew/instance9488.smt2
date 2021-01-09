(declare-const X String)
; Host\x3A.*Basic.*ProtoUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.* re.allchar) (str.to.re "Basic") (re.* re.allchar) (str.to.re "ProtoUser-Agent:\x0a")))))
; ^-?\d*(\.\d+)?$
(assert (str.in.re X (re.++ (re.opt (str.to.re "-")) (re.* (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") (re.+ (re.range "0" "9")))) (str.to.re "\x0a"))))
; [-+]((0[0-9]|1[0-3]):([03]0|45)|14:00)
(assert (not (str.in.re X (re.++ (re.union (str.to.re "-") (str.to.re "+")) (re.union (re.++ (re.union (re.++ (str.to.re "0") (re.range "0" "9")) (re.++ (str.to.re "1") (re.range "0" "3"))) (str.to.re ":") (re.union (re.++ (re.union (str.to.re "0") (str.to.re "3")) (str.to.re "0")) (str.to.re "45"))) (str.to.re "14:00")) (str.to.re "\x0a")))))
; xpsp2-\s+spyblpat.*is\x2EphpBarFrom\x3A
(assert (str.in.re X (re.++ (str.to.re "xpsp2-") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "spyblpat") (re.* re.allchar) (str.to.re "is.phpBarFrom:\x0a"))))
; /\.gif\x3f[a-f0-9]{4,7}\x3d\d{6,8}$/U
(assert (str.in.re X (re.++ (str.to.re "/.gif?") ((_ re.loop 4 7) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "=") ((_ re.loop 6 8) (re.range "0" "9")) (str.to.re "/U\x0a"))))
(check-sat)
