(declare-const X String)
; ^\{(.+)|^\\(.+)|(\}*)
(assert (str.in.re X (re.union (re.++ (str.to.re "{") (re.+ re.allchar)) (re.++ (str.to.re "\x5c") (re.+ re.allchar)) (re.++ (re.* (str.to.re "}")) (str.to.re "\x0a")))))
; www\x2Eweepee\x2Ecom\s+www\x2Ewebfringe\x2Ecomwww\.123mania\.com\x2F0409
(assert (str.in.re X (re.++ (str.to.re "www.weepee.com\x1b") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.webfringe.comwww.123mania.com/0409\x0a"))))
; Host\x3A\sHello\x2E.*forum=
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Hello.") (re.* re.allchar) (str.to.re "forum=\x0a")))))
; ^[-\w\s"'=/!@#%&,;:`~\.\$\^\{\[\(\|\)\]\}\*\+\?\\]*$
(assert (not (str.in.re X (re.++ (re.* (re.union (str.to.re "-") (str.to.re "\x22") (str.to.re "'") (str.to.re "=") (str.to.re "/") (str.to.re "!") (str.to.re "@") (str.to.re "#") (str.to.re "%") (str.to.re "&") (str.to.re ",") (str.to.re ";") (str.to.re ":") (str.to.re "`") (str.to.re "~") (str.to.re ".") (str.to.re "$") (str.to.re "^") (str.to.re "{") (str.to.re "[") (str.to.re "(") (str.to.re "|") (str.to.re ")") (str.to.re "]") (str.to.re "}") (str.to.re "*") (str.to.re "+") (str.to.re "?") (str.to.re "\x5c") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a")))))
; ^((\d){3})(-)?(\d){2}(-)?(\d){4}(A|B[1-7]?|M|T|C[1-4]|D)$
(assert (not (str.in.re X (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re "-")) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to.re "-")) ((_ re.loop 4 4) (re.range "0" "9")) (re.union (str.to.re "A") (re.++ (str.to.re "B") (re.opt (re.range "1" "7"))) (str.to.re "M") (str.to.re "T") (re.++ (str.to.re "C") (re.range "1" "4")) (str.to.re "D")) (str.to.re "\x0a")))))
(check-sat)
