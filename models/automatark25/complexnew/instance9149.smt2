(declare-const X String)
; Cookie\x3a\s+\x2FGRSI\|Server\|Host\x3Aorigin\x3Dsidefind
(assert (str.in.re X (re.++ (str.to.re "Cookie:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/GRSI|Server|\x13Host:origin=sidefind\x0a"))))
; (^\d{1,3}$)|(\d{1,3})\.?(\d{0,0}[0,5])
(assert (not (str.in.re X (re.union ((_ re.loop 1 3) (re.range "0" "9")) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.opt (str.to.re ".")) (str.to.re "\x0a") ((_ re.loop 0 0) (re.range "0" "9")) (re.union (str.to.re "0") (str.to.re ",") (str.to.re "5")))))))
; \\red([01]?\d\d?|2[0-4]\d|25[0-5])\\green([01]?\d\d?|2[0-4]\d|25[0-5])\\blue([01]?\d\d?|2[0-4]\d|25[0-5]);
(assert (not (str.in.re X (re.++ (str.to.re "\x5cred") (re.union (re.++ (re.opt (re.union (str.to.re "0") (str.to.re "1"))) (re.range "0" "9") (re.opt (re.range "0" "9"))) (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "25") (re.range "0" "5"))) (str.to.re "\x5cgreen") (re.union (re.++ (re.opt (re.union (str.to.re "0") (str.to.re "1"))) (re.range "0" "9") (re.opt (re.range "0" "9"))) (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "25") (re.range "0" "5"))) (str.to.re "\x5cblue") (re.union (re.++ (re.opt (re.union (str.to.re "0") (str.to.re "1"))) (re.range "0" "9") (re.opt (re.range "0" "9"))) (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "25") (re.range "0" "5"))) (str.to.re ";\x0a")))))
; /filename=[^\n]*\x2epaq8o/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".paq8o/i\x0a")))))
(check-sat)
