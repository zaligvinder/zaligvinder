(declare-const X String)
; [A-Z][a-zA-Z]+ [A-Z][a-zA-Z]+
(assert (str.in.re X (re.++ (re.range "A" "Z") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re " ") (re.range "A" "Z") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "\x0a"))))
; URLBlaze.*User-Agent\x3A.*mPOPUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "URLBlaze") (re.* re.allchar) (str.to.re "User-Agent:") (re.* re.allchar) (str.to.re "mPOPUser-Agent:\x0a")))))
; 666Host\x3aWEBCAM-Host\x3a
(assert (not (str.in.re X (str.to.re "666Host:WEBCAM-Host:\x0a"))))
; [\s0-9a-zA-Z\;\"\,\<\>\\?\+\=\)\(\\*\&\%\\$\#\.]*
(assert (str.in.re X (re.++ (re.* (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z") (str.to.re ";") (str.to.re "\x22") (str.to.re ",") (str.to.re "<") (str.to.re ">") (str.to.re "\x5c") (str.to.re "?") (str.to.re "+") (str.to.re "=") (str.to.re ")") (str.to.re "(") (str.to.re "*") (str.to.re "&") (str.to.re "%") (str.to.re "$") (str.to.re "#") (str.to.re ".") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a"))))
; ^\d{1,7}$
(assert (str.in.re X (re.++ ((_ re.loop 1 7) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
