(declare-const X String)
; /\(\?[gimxs]{1,5}\)/
(assert (str.in.re X (re.++ (str.to.re "/(?") ((_ re.loop 1 5) (re.union (str.to.re "g") (str.to.re "i") (str.to.re "m") (str.to.re "x") (str.to.re "s"))) (str.to.re ")/\x0a"))))
; replace(MobileNo,' ',''),'^(\+44|0044|0)(7)[4-9][0-9]{8}$'
(assert (not (str.in.re X (re.++ (str.to.re "replaceMobileNo,' ','','") (re.union (str.to.re "+44") (str.to.re "0044") (str.to.re "0")) (str.to.re "7") (re.range "4" "9") ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "'\x0a")))))
; /\x2ef4a([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.f4a") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; Host\x3A\s+Eyewww\x2Eccnnlc\x2EcomHost\x3aHost\x3a
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Eyewww.ccnnlc.com\x13Host:Host:\x0a")))))
; [\s0-9a-zA-Z\;\"\,\<\>\\?\+\=\)\(\\*\&\%\\$\#\.]*
(assert (str.in.re X (re.++ (re.* (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z") (str.to.re ";") (str.to.re "\x22") (str.to.re ",") (str.to.re "<") (str.to.re ">") (str.to.re "\x5c") (str.to.re "?") (str.to.re "+") (str.to.re "=") (str.to.re ")") (str.to.re "(") (str.to.re "*") (str.to.re "&") (str.to.re "%") (str.to.re "$") (str.to.re "#") (str.to.re ".") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a"))))
(check-sat)
