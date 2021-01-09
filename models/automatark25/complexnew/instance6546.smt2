(declare-const X String)
; Subject\x3A\d+AgentUser-Agent\x3ahasHost\x3a
(assert (str.in.re X (re.++ (str.to.re "Subject:") (re.+ (re.range "0" "9")) (str.to.re "AgentUser-Agent:hasHost:\x0a"))))
; Host\x3AuploadServer3AdapupdEFErrorSubject\x3a
(assert (not (str.in.re X (str.to.re "Host:uploadServer3AdapupdEFErrorSubject:\x0a"))))
; \b((J(AN|UN|UL))|FEB|MAR|(A(PR|UG))|MAY|SEP|NOV|DEC|OCT)\s*(0?[1-9]|1[0-9]|2[0-9]|3[0-1])\s*(\,)\s*(200[0-9])\b
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "J") (re.union (str.to.re "AN") (str.to.re "UN") (str.to.re "UL"))) (str.to.re "FEB") (str.to.re "MAR") (re.++ (str.to.re "A") (re.union (str.to.re "PR") (str.to.re "UG"))) (str.to.re "MAY") (str.to.re "SEP") (str.to.re "NOV") (str.to.re "DEC") (str.to.re "OCT")) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "9")) (re.++ (str.to.re "3") (re.range "0" "1"))) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re ",") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a200") (re.range "0" "9"))))
; ^(\d{2,3}|\(\d{2,3}\))?[ ]?\d{3,4}[-]?\d{3,4}$
(assert (str.in.re X (re.++ (re.opt (re.union ((_ re.loop 2 3) (re.range "0" "9")) (re.++ (str.to.re "(") ((_ re.loop 2 3) (re.range "0" "9")) (str.to.re ")")))) (re.opt (str.to.re " ")) ((_ re.loop 3 4) (re.range "0" "9")) (re.opt (str.to.re "-")) ((_ re.loop 3 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; LoginHost\x3a\x2Ffriendship\x2Femail_thank_you\?
(assert (str.in.re X (str.to.re "LoginHost:/friendship/email_thank_you?\x0a")))
(check-sat)
