(declare-const X String)
; /^\d+O\d+\.jsp\?[a-z0-9\x3d\x2b\x2f]{20}/iR
(assert (str.in.re X (re.++ (str.to.re "/") (re.+ (re.range "0" "9")) (str.to.re "O") (re.+ (re.range "0" "9")) (str.to.re ".jsp?") ((_ re.loop 20 20) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "=") (str.to.re "+") (str.to.re "/"))) (str.to.re "/iR\x0a"))))
; function.*WEBCAM-.*User-Agent\x3a
(assert (str.in.re X (re.++ (str.to.re "function") (re.* re.allchar) (str.to.re "WEBCAM-") (re.* re.allchar) (str.to.re "User-Agent:\x0a"))))
; /[^\n -~\r]{4}/P
(assert (not (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 4 4) (re.union (str.to.re "\x0a") (re.range " " "~") (str.to.re "\x0d"))) (str.to.re "/P\x0a")))))
; /filename=[^\n]*\x2edvr-ms/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".dvr-ms/i\x0a")))))
; ^[H][R][\-][0-9]{5}$
(assert (not (str.in.re X (re.++ (str.to.re "HR-") ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
