(declare-const X String)
; Host\x3AfromZC-Bridgev\x2Exml\x2FNFO\x2CRegistered
(assert (not (str.in.re X (str.to.re "Host:fromZC-Bridgev.xml/NFO,Registered\x0a"))))
; \x2APORT3\x2A\s+Warez.*X-Mailer\x3ASubject\x3AKEY=
(assert (str.in.re X (re.++ (str.to.re "*PORT3*") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Warez") (re.* re.allchar) (str.to.re "X-Mailer:\x13Subject:KEY=\x0a"))))
; (^(352)[8-9](\d{11}$|\d{12}$))|(^(35)[3-8](\d{12}$|\d{13}$))
(assert (not (str.in.re X (re.union (re.++ (str.to.re "352") (re.range "8" "9") (re.union ((_ re.loop 11 11) (re.range "0" "9")) ((_ re.loop 12 12) (re.range "0" "9")))) (re.++ (str.to.re "\x0a35") (re.range "3" "8") (re.union ((_ re.loop 12 12) (re.range "0" "9")) ((_ re.loop 13 13) (re.range "0" "9"))))))))
; ([0-1][0-9]|2[0-4]):(0[0-9]|[1-5][0-9]):(0[0-9]|[1-5][0-9])(\.[0-999])?((\+|-)([0-1][0-9]|2[0-4]):(0[0-9]|[1-5][0-9])|Z)?
(assert (str.in.re X (re.++ (re.union (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "4"))) (str.to.re ":") (re.union (re.++ (str.to.re "0") (re.range "0" "9")) (re.++ (re.range "1" "5") (re.range "0" "9"))) (str.to.re ":") (re.union (re.++ (str.to.re "0") (re.range "0" "9")) (re.++ (re.range "1" "5") (re.range "0" "9"))) (re.opt (re.++ (str.to.re ".") (re.union (re.range "0" "9") (str.to.re "9")))) (re.opt (re.union (re.++ (re.union (str.to.re "+") (str.to.re "-")) (re.union (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "4"))) (str.to.re ":") (re.union (re.++ (str.to.re "0") (re.range "0" "9")) (re.++ (re.range "1" "5") (re.range "0" "9")))) (str.to.re "Z"))) (str.to.re "\x0a"))))
; \bfor\b.*[A-Za-z][<> ][\d]
(assert (not (str.in.re X (re.++ (str.to.re "for") (re.* re.allchar) (re.union (re.range "A" "Z") (re.range "a" "z")) (re.union (str.to.re "<") (str.to.re ">") (str.to.re " ")) (re.range "0" "9") (str.to.re "\x0a")))))
(check-sat)
