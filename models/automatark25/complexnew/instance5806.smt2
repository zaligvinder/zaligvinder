(declare-const X String)
; (^\d*\.?\d*[0-9]+\d*$)|(^[0-9]+\d*\.\d*$)
(assert (str.in.re X (re.union (re.++ (re.* (re.range "0" "9")) (re.opt (str.to.re ".")) (re.* (re.range "0" "9")) (re.+ (re.range "0" "9")) (re.* (re.range "0" "9"))) (re.++ (str.to.re "\x0a") (re.+ (re.range "0" "9")) (re.* (re.range "0" "9")) (str.to.re ".") (re.* (re.range "0" "9"))))))
; /\x2eqt([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.qt") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; Agent\s+\x2Ftoolbar\x2Fico\x2F
(assert (not (str.in.re X (re.++ (str.to.re "Agent") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/toolbar/ico/\x0a")))))
; /(sIda\/sId|urua\/uru)[abcd]\.classPK/ims
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "sIda/sId") (str.to.re "urua/uru")) (re.union (str.to.re "a") (str.to.re "b") (str.to.re "c") (str.to.re "d")) (str.to.re ".classPK/ims\x0a")))))
(check-sat)
