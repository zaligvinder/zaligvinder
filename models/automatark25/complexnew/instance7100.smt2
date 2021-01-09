(declare-const X String)
; SecureNet.*\x2Fsearchfast\x2F
(assert (not (str.in.re X (re.++ (str.to.re "SecureNet") (re.* re.allchar) (str.to.re "/searchfast/\x0a")))))
; ^[0][5][0]-\d{7}|[0][5][2]-\d{7}|[0][5][4]-\d{7}|[0][5][7]-\d{7}$
(assert (str.in.re X (re.union (re.++ (str.to.re "050-") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to.re "052-") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to.re "054-") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to.re "057-") ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a")))))
; /\x2ejpeg([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.jpeg") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; DATencentTravelerWebConnLibHost\x3A
(assert (not (str.in.re X (str.to.re "DATencentTravelerWebConnLibHost:\x0a"))))
; /filename=[^\n]*\x2eafm/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".afm/i\x0a"))))
(check-sat)
