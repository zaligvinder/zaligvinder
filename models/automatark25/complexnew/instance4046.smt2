(declare-const X String)
; Subject\x3aHostYWRtaW46cGFzc3dvcmQ
(assert (not (str.in.re X (str.to.re "Subject:HostYWRtaW46cGFzc3dvcmQ\x0a"))))
; ^100$|^\d{0,2}(\.\d{1,2})? *%?$
(assert (str.in.re X (re.union (str.to.re "100") (re.++ ((_ re.loop 0 2) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (re.* (str.to.re " ")) (re.opt (str.to.re "%")) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2evap/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".vap/i\x0a"))))
(check-sat)
