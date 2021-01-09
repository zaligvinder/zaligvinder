(declare-const X String)
; \b[A-Z-[DFIOQUWZ]]\d[A-Z-[DFIOQU]]\ +\d[A-Z-[DFIOQU]]\d\b
(assert (not (str.in.re X (re.++ (re.union (re.range "A" "Z") (str.to.re "-") (str.to.re "[") (str.to.re "D") (str.to.re "F") (str.to.re "I") (str.to.re "O") (str.to.re "Q") (str.to.re "U") (str.to.re "W") (str.to.re "Z")) (str.to.re "]") (re.range "0" "9") (re.union (re.range "A" "Z") (str.to.re "-") (str.to.re "[") (str.to.re "D") (str.to.re "F") (str.to.re "I") (str.to.re "O") (str.to.re "Q") (str.to.re "U")) (str.to.re "]") (re.+ (str.to.re " ")) (re.range "0" "9") (re.union (re.range "A" "Z") (str.to.re "-") (str.to.re "[") (str.to.re "D") (str.to.re "F") (str.to.re "I") (str.to.re "O") (str.to.re "Q") (str.to.re "U")) (str.to.re "]") (re.range "0" "9") (str.to.re "\x0a")))))
; \b([0-1]?\d{1,2}|2[0-4]\d|25[0-5])(\.([0-1]?\d{1,2}|2[0-4]\d|25[0-5])){3}\b
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.opt (re.range "0" "1")) ((_ re.loop 1 2) (re.range "0" "9"))) (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "25") (re.range "0" "5"))) ((_ re.loop 3 3) (re.++ (str.to.re ".") (re.union (re.++ (re.opt (re.range "0" "1")) ((_ re.loop 1 2) (re.range "0" "9"))) (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "25") (re.range "0" "5"))))) (str.to.re "\x0a")))))
; ^[12345]$
(assert (not (str.in.re X (re.++ (re.union (str.to.re "1") (str.to.re "2") (str.to.re "3") (str.to.re "4") (str.to.re "5")) (str.to.re "\x0a")))))
(check-sat)
