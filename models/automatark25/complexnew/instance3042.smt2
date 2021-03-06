(declare-const X String)
; ^(([1..9])|(0[1..9])|(1\d)|(2\d)|(3[0..1])).((\d)|(0\d)|(1[0..2])).(\d{4})$
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "0") (re.union (str.to.re "1") (str.to.re ".") (str.to.re "9"))) (re.++ (str.to.re "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "9")) (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re ".") (str.to.re "1"))) (str.to.re "1") (str.to.re ".") (str.to.re "9")) re.allchar (re.union (re.range "0" "9") (re.++ (str.to.re "0") (re.range "0" "9")) (re.++ (str.to.re "1") (re.union (str.to.re "0") (str.to.re ".") (str.to.re "2")))) re.allchar ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; /(sIda\/sId|urua\/uru)[abcd]\.classPK/ims
(assert (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "sIda/sId") (str.to.re "urua/uru")) (re.union (str.to.re "a") (str.to.re "b") (str.to.re "c") (str.to.re "d")) (str.to.re ".classPK/ims\x0a"))))
; IP-[^\n\r]*URL\d\x7croogoo\x7c\.cfgmPOPrtCUSTOMPalToolbar
(assert (str.in.re X (re.++ (str.to.re "IP-") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "URL") (re.range "0" "9") (str.to.re "|roogoo|.cfgmPOPrtCUSTOMPalToolbar\x0a"))))
(check-sat)
