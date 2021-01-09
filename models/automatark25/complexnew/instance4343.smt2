(declare-const X String)
; ^[0-9#\*abcdABCD]+$
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "0" "9") (str.to.re "#") (str.to.re "*") (str.to.re "a") (str.to.re "b") (str.to.re "c") (str.to.re "d") (str.to.re "A") (str.to.re "B") (str.to.re "C") (str.to.re "D"))) (str.to.re "\x0a"))))
; Host\x3A\s+Basic\s+\.htaServerTheef2
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Basic") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re ".htaServerTheef2\x0a"))))
; Host\x3A.*Peer.*Host\x3ABasicurl=http\x3A
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.* re.allchar) (str.to.re "Peer") (re.* re.allchar) (str.to.re "Host:Basicurl=http:\x1b\x0a"))))
; ^([\(]{1}[0-9]{3}[\)]{1}[ |\-]{0,1}|^[0-9]{3}[\-| ])?[0-9]{3}(\-| ){1}[0-9]{4}(([ ]{0,1})|([ ]{1}[0-9]{3,4}|))$
(assert (str.in.re X (re.++ (re.opt (re.union (re.++ ((_ re.loop 1 1) (str.to.re "(")) ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 1 1) (str.to.re ")")) (re.opt (re.union (str.to.re " ") (str.to.re "|") (str.to.re "-")))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to.re "-") (str.to.re "|") (str.to.re " "))))) ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (str.to.re "-") (str.to.re " "))) ((_ re.loop 4 4) (re.range "0" "9")) (re.union (re.opt (str.to.re " ")) (re.++ ((_ re.loop 1 1) (str.to.re " ")) ((_ re.loop 3 4) (re.range "0" "9")))) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2ek3g/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".k3g/i\x0a")))))
(check-sat)
