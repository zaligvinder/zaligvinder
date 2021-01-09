(declare-const X String)
; ^07[789]-\d{7}$
(assert (not (str.in.re X (re.++ (str.to.re "07") (re.union (str.to.re "7") (str.to.re "8") (str.to.re "9")) (str.to.re "-") ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a")))))
; /^icmp\x7c\d+\x7c\d+\x7C[a-z0-9]+\x2E[a-z]{2,3}\x7C[a-z0-9]+\x7C/
(assert (str.in.re X (re.++ (str.to.re "/icmp|") (re.+ (re.range "0" "9")) (str.to.re "|") (re.+ (re.range "0" "9")) (str.to.re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".") ((_ re.loop 2 3) (re.range "a" "z")) (str.to.re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "|/\x0a"))))
; IPUSER-Host\x3AUser-Agent\x3A\x2Fsearchfast\x2F
(assert (not (str.in.re X (str.to.re "IPUSER-Host:User-Agent:/searchfast/\x0a"))))
; /filename=[^\n]*\x2eafm/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".afm/i\x0a")))))
; /window\x2elocation\s*=\s*unescape\s*\x28\s*["']\x25[^"']*https?\x3a/
(assert (not (str.in.re X (re.++ (str.to.re "/window.location") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "=") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "unescape") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "(") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (str.to.re "\x22") (str.to.re "'")) (str.to.re "%") (re.* (re.union (str.to.re "\x22") (str.to.re "'"))) (str.to.re "http") (re.opt (str.to.re "s")) (str.to.re ":/\x0a")))))
(check-sat)
