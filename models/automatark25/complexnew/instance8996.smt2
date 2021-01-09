(declare-const X String)
; <(.*?)>
(assert (str.in.re X (re.++ (str.to.re "<") (re.* re.allchar) (str.to.re ">\x0a"))))
; ^[0-9]{6}
(assert (not (str.in.re X (re.++ ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "\x0a")))))
; ((\d{1,5})*\.*(\d{0,3})"[W|D|H|DIA][X|\s]).*
(assert (str.in.re X (re.++ (re.* re.allchar) (str.to.re "\x0a") (re.* ((_ re.loop 1 5) (re.range "0" "9"))) (re.* (str.to.re ".")) ((_ re.loop 0 3) (re.range "0" "9")) (str.to.re "\x22") (re.union (str.to.re "W") (str.to.re "|") (str.to.re "D") (str.to.re "H") (str.to.re "I") (str.to.re "A")) (re.union (str.to.re "X") (str.to.re "|") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))))
; Keystrokes.*LOG.*Host\x3Awww\x2Eserverlogic3\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Keystrokes") (re.* re.allchar) (str.to.re "LOG") (re.* re.allchar) (str.to.re "Host:www.serverlogic3.com\x0a")))))
; /\x2ep2g([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.p2g") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
(check-sat)
