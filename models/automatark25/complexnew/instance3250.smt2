(declare-const X String)
; Host\u{3A}fromZC-Bridgev\u{2E}xml\u{2F}NFO\u{2C}Registered
(assert (not (str.in_re X (str.to_re "Host:fromZC-Bridgev.xml/NFO,Registered\u{a}"))))
; \u{2A}PORT3\u{2A}\s+Warez.*X-Mailer\u{3A}Subject\u{3A}KEY=
(assert (str.in_re X (re.++ (str.to_re "*PORT3*") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Warez") (re.* re.allchar) (str.to_re "X-Mailer:\u{13}Subject:KEY=\u{a}"))))
; (^(352)[8-9](\d{11}$|\d{12}$))|(^(35)[3-8](\d{12}$|\d{13}$))
(assert (not (str.in_re X (re.union (re.++ (str.to_re "352") (re.range "8" "9") (re.union ((_ re.loop 11 11) (re.range "0" "9")) ((_ re.loop 12 12) (re.range "0" "9")))) (re.++ (str.to_re "\u{a}35") (re.range "3" "8") (re.union ((_ re.loop 12 12) (re.range "0" "9")) ((_ re.loop 13 13) (re.range "0" "9"))))))))
; ([0-1][0-9]|2[0-4]):(0[0-9]|[1-5][0-9]):(0[0-9]|[1-5][0-9])(\.[0-999])?((\+|-)([0-1][0-9]|2[0-4]):(0[0-9]|[1-5][0-9])|Z)?
(assert (str.in_re X (re.++ (re.union (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "4"))) (str.to_re ":") (re.union (re.++ (str.to_re "0") (re.range "0" "9")) (re.++ (re.range "1" "5") (re.range "0" "9"))) (str.to_re ":") (re.union (re.++ (str.to_re "0") (re.range "0" "9")) (re.++ (re.range "1" "5") (re.range "0" "9"))) (re.opt (re.++ (str.to_re ".") (re.union (re.range "0" "9") (str.to_re "9")))) (re.opt (re.union (re.++ (re.union (str.to_re "+") (str.to_re "-")) (re.union (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "4"))) (str.to_re ":") (re.union (re.++ (str.to_re "0") (re.range "0" "9")) (re.++ (re.range "1" "5") (re.range "0" "9")))) (str.to_re "Z"))) (str.to_re "\u{a}"))))
; \bfor\b.*[A-Za-z][<> ][\d]
(assert (not (str.in_re X (re.++ (str.to_re "for") (re.* re.allchar) (re.union (re.range "A" "Z") (re.range "a" "z")) (re.union (str.to_re "<") (str.to_re ">") (str.to_re " ")) (re.range "0" "9") (str.to_re "\u{a}")))))
(check-sat)
