(declare-const X String)
; Referer\x3aHost\x3aport\x3aactivity
(assert (str.in.re X (str.to.re "Referer:Host:port:activity\x0a")))
; Monitor\s+SupervisorPalUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "Monitor") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "SupervisorPalUser-Agent:\x0a"))))
; /filename=[^\n]*\x2emaki/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".maki/i\x0a")))))
; ^(1(0|7|9)2?)\.([01]?[0-9]?[0-9]|2[0-4][0-9]|25[0-5])\.([01]?[0-9]?[0-9]|2[0-4][0-9]|25[0-5])\.([01]?[0-9]?[0-9]|2[0-4][0-9]|25[0-5])$
(assert (str.in.re X (re.++ (str.to.re ".") (re.union (re.++ (re.opt (re.union (str.to.re "0") (str.to.re "1"))) (re.opt (re.range "0" "9")) (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "25") (re.range "0" "5"))) (str.to.re ".") (re.union (re.++ (re.opt (re.union (str.to.re "0") (str.to.re "1"))) (re.opt (re.range "0" "9")) (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "25") (re.range "0" "5"))) (str.to.re ".") (re.union (re.++ (re.opt (re.union (str.to.re "0") (str.to.re "1"))) (re.opt (re.range "0" "9")) (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "25") (re.range "0" "5"))) (str.to.re "\x0a1") (re.union (str.to.re "0") (str.to.re "7") (str.to.re "9")) (re.opt (str.to.re "2")))))
; /window\x2elocation\s*=\s*unescape\s*\x28\s*["']\x25[^"']*https?\x3a/
(assert (str.in.re X (re.++ (str.to.re "/window.location") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "=") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "unescape") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "(") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (str.to.re "\x22") (str.to.re "'")) (str.to.re "%") (re.* (re.union (str.to.re "\x22") (str.to.re "'"))) (str.to.re "http") (re.opt (str.to.re "s")) (str.to.re ":/\x0a"))))
(check-sat)
