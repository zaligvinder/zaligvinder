(declare-const X String)
; /^[a-zA-Z0-9]+$/
(assert (str.in.re X (re.++ (str.to.re "/") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "/\x0a"))))
; (ES-?)?([0-9A-Z][0-9]{7}[A-Z])|([A-Z][0-9]{7}[0-9A-Z])
(assert (not (str.in.re X (re.union (re.++ (re.opt (re.++ (str.to.re "ES") (re.opt (str.to.re "-")))) (re.union (re.range "0" "9") (re.range "A" "Z")) ((_ re.loop 7 7) (re.range "0" "9")) (re.range "A" "Z")) (re.++ (str.to.re "\x0a") (re.range "A" "Z") ((_ re.loop 7 7) (re.range "0" "9")) (re.union (re.range "0" "9") (re.range "A" "Z")))))))
; \x7D\x7BTrojan\x3AUser-Agent\x3AbyHost\x3A\xb0\xae\xb6\xf9\xcd\xf8\xb5\xc1
(assert (not (str.in.re X (str.to.re "}{Trojan:User-Agent:byHost:\xb0\xae\xb6\xf9\xcd\xf8\xb5\xc1\x0a"))))
; User-Agent\x3A\d+dll\x3F.*started\x2EfeedbackUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.range "0" "9")) (str.to.re "dll?") (re.* re.allchar) (str.to.re "started.feedbackUser-Agent:\x0a")))))
; Logger.*Host\x3A.*\x2Fcommunicatortb\x7croogoo\x7c
(assert (not (str.in.re X (re.++ (str.to.re "Logger") (re.* re.allchar) (str.to.re "Host:") (re.* re.allchar) (str.to.re "/communicatortb|roogoo|\x0a")))))
(check-sat)
