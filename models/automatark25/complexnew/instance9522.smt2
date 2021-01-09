(declare-const X String)
; ^([012346789][0-9]{4})$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.union (str.to.re "0") (str.to.re "1") (str.to.re "2") (str.to.re "3") (str.to.re "4") (str.to.re "6") (str.to.re "7") (str.to.re "8") (str.to.re "9")) ((_ re.loop 4 4) (re.range "0" "9"))))))
; Subject\x3aHostYWRtaW46cGFzc3dvcmQ
(assert (str.in.re X (str.to.re "Subject:HostYWRtaW46cGFzc3dvcmQ\x0a")))
; /filename=[^\n]*\x2ebcl/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".bcl/i\x0a")))))
; ^[^\x00-\x1f\x21-\x26\x28-\x2d\x2f-\x40\x5b-\x60\x7b-\xff]+$
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "\x00" "\x1f") (re.range "!" "&") (re.range "(" "-") (re.range "/" "@") (re.range "[" "`") (re.range "{" "\xff"))) (str.to.re "\x0a")))))
; (AUX|PRN|NUL|COM\d|LPT\d)+\s*$
(assert (str.in.re X (re.++ (re.+ (re.union (str.to.re "AUX") (str.to.re "PRN") (str.to.re "NUL") (re.++ (str.to.re "COM") (re.range "0" "9")) (re.++ (str.to.re "LPT") (re.range "0" "9")))) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a"))))
(check-sat)
