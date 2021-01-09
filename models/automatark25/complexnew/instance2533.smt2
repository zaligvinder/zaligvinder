(declare-const X String)
; ^[a-zA-Z]{1}[0-9]{1}[a-zA-Z]{1}[- ]{0,1}[0-9]{1}[a-zA-Z]{1}[0-9]{1}
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.opt (re.union (str.to.re "-") (str.to.re " "))) ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 1 1) (re.range "0" "9")) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2epfb/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".pfb/i\x0a"))))
; (private|public|protected)\s\w(.)*\((.)*\)[^;]
(assert (str.in.re X (re.++ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")) (re.* re.allchar) (str.to.re "(") (re.* re.allchar) (str.to.re ")") (re.comp (str.to.re ";")) (str.to.re "\x0ap") (re.union (str.to.re "rivate") (str.to.re "ublic") (str.to.re "rotected")))))
; Xtra\s+Host\x3A\s+Referer\x3aThisSubject\x3a
(assert (not (str.in.re X (re.++ (str.to.re "Xtra") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Referer:ThisSubject:\x0a")))))
(check-sat)
