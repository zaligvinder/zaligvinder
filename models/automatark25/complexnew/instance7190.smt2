(declare-const X String)
; ookflolfctm\x2fnmot\.fmu
(assert (not (str.in.re X (str.to.re "ookflolfctm/nmot.fmu\x0a"))))
; /^udp\x7c\d+\x7c\d+\x7C[a-z0-9]+\x2E[a-z]{2,3}\x7C[a-z0-9]+\x7C/
(assert (str.in.re X (re.++ (str.to.re "/udp|") (re.+ (re.range "0" "9")) (str.to.re "|") (re.+ (re.range "0" "9")) (str.to.re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".") ((_ re.loop 2 3) (re.range "a" "z")) (str.to.re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "|/\x0a"))))
; ^[SFTG]\d{7}[A-Z]$
(assert (str.in.re X (re.++ (re.union (str.to.re "S") (str.to.re "F") (str.to.re "T") (str.to.re "G")) ((_ re.loop 7 7) (re.range "0" "9")) (re.range "A" "Z") (str.to.re "\x0a"))))
; Subject\x3aHostYWRtaW46cGFzc3dvcmQ
(assert (not (str.in.re X (str.to.re "Subject:HostYWRtaW46cGFzc3dvcmQ\x0a"))))
; .*[a-zA-Z]$
(assert (str.in.re X (re.++ (re.* re.allchar) (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to.re "\x0a"))))
(check-sat)
