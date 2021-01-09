(declare-const X String)
; /^\x02\d+ cfA/smi
(assert (str.in.re X (re.++ (str.to.re "/\x02") (re.+ (re.range "0" "9")) (str.to.re " cfA/smi\x0a"))))
; ^<\!\-\-(.*)+(\/){0,1}\-\->$
(assert (not (str.in.re X (re.++ (str.to.re "<!--") (re.+ (re.* re.allchar)) (re.opt (str.to.re "/")) (str.to.re "-->\x0a")))))
; /mmlocate[^\x00]*?([\x3b\x7c\x26\x60]|\x24\x28)/
(assert (not (str.in.re X (re.++ (str.to.re "/mmlocate") (re.* (re.comp (str.to.re "\x00"))) (re.union (str.to.re "$(") (str.to.re ";") (str.to.re "|") (str.to.re "&") (str.to.re "`")) (str.to.re "/\x0a")))))
; YWRtaW46cGFzc3dvcmQ[^\n\r]*DA[^\n\r]*Host\x3Awww\x2Ee-finder\x2Ecc
(assert (str.in.re X (re.++ (str.to.re "YWRtaW46cGFzc3dvcmQ") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "DA") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Host:www.e-finder.cc\x0a"))))
(check-sat)
