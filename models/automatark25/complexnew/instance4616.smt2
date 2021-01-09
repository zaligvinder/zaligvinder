(declare-const X String)
; Windows\s+haveFTUser-Agent\x3ADayspassword\x3B0\x3BIncorrect
(assert (str.in.re X (re.++ (str.to.re "Windows") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "haveFTUser-Agent:Dayspassword;0;Incorrect\x0a"))))
; /filename=[\x22\x27]?[^\n]*\x2ewpd[\x22\x27\s]/si
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.opt (re.union (str.to.re "\x22") (str.to.re "'"))) (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".wpd") (re.union (str.to.re "\x22") (str.to.re "'") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "/si\x0a"))))
; ((https?|ftp|gopher|telnet|file|notes|ms-help):((//)|(\\\\))+[\w\d:#@%/;$()~_\+-=\\\.&]*)
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.union (re.++ (str.to.re "http") (re.opt (str.to.re "s"))) (str.to.re "ftp") (str.to.re "gopher") (str.to.re "telnet") (str.to.re "file") (str.to.re "notes") (str.to.re "ms-help")) (str.to.re ":") (re.+ (re.union (str.to.re "//") (str.to.re "\x5c\x5c"))) (re.* (re.union (re.range "0" "9") (str.to.re ":") (str.to.re "#") (str.to.re "@") (str.to.re "%") (str.to.re "/") (str.to.re ";") (str.to.re "$") (str.to.re "(") (str.to.re ")") (str.to.re "~") (str.to.re "_") (re.range "+" "=") (str.to.re "\x5c") (str.to.re ".") (str.to.re "&") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))))))
; /^([a-z0-9])(([\-.]|[_]+)?([a-z0-9]+))*(@)([a-z0-9])((([-]+)?([a-z0-9]+))?)*((.[a-z]{2,3})?(.[a-z]{2,6}))$/i
(assert (str.in.re X (re.++ (str.to.re "/") (re.union (re.range "a" "z") (re.range "0" "9")) (re.* (re.++ (re.opt (re.union (re.+ (str.to.re "_")) (str.to.re "-") (str.to.re "."))) (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))))) (str.to.re "@") (re.union (re.range "a" "z") (re.range "0" "9")) (re.* (re.opt (re.++ (re.opt (re.+ (str.to.re "-"))) (re.+ (re.union (re.range "a" "z") (re.range "0" "9")))))) (str.to.re "/i\x0a") (re.opt (re.++ re.allchar ((_ re.loop 2 3) (re.range "a" "z")))) re.allchar ((_ re.loop 2 6) (re.range "a" "z")))))
; /poc\/(Exploit|myClassLoader|pocMain|runCmd)\.class/ims
(assert (str.in.re X (re.++ (str.to.re "/poc/") (re.union (str.to.re "Exploit") (str.to.re "myClassLoader") (str.to.re "pocMain") (str.to.re "runCmd")) (str.to.re ".class/ims\x0a"))))
(check-sat)
