(declare-const X String)
; <!--[\s\S]*?--[ \t\n\r]*>
(assert (str.in.re X (re.++ (str.to.re "<!--") (re.* (re.union (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "--") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re ">\x0a"))))
; [\s0-9a-zA-Z\;\"\,\<\>\\?\+\=\)\(\\*\&\%\\$\#\.]*
(assert (str.in.re X (re.++ (re.* (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z") (str.to.re ";") (str.to.re "\x22") (str.to.re ",") (str.to.re "<") (str.to.re ">") (str.to.re "\x5c") (str.to.re "?") (str.to.re "+") (str.to.re "=") (str.to.re ")") (str.to.re "(") (str.to.re "*") (str.to.re "&") (str.to.re "%") (str.to.re "$") (str.to.re "#") (str.to.re ".") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a"))))
; BasicYWRtaW46cGFzc3dvcmQeAnthMngrLOGsearches\x2Eworldtostart\x2Ecom
(assert (not (str.in.re X (str.to.re "BasicYWRtaW46cGFzc3dvcmQeAnthMngrLOGsearches.worldtostart.com\x0a"))))
(check-sat)
