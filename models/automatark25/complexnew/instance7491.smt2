(declare-const X String)
; ^(([0]([2|3|4|5|6|8|9|7])))\d{7,8}$
(assert (not (str.in.re X (re.++ ((_ re.loop 7 8) (re.range "0" "9")) (str.to.re "\x0a0") (re.union (str.to.re "2") (str.to.re "|") (str.to.re "3") (str.to.re "4") (str.to.re "5") (str.to.re "6") (str.to.re "8") (str.to.re "9") (str.to.re "7"))))))
; ^(([a-h,A-H,j-n,J-N,p-z,P-Z,0-9]{9})([a-h,A-H,j-n,J-N,p,P,r-t,R-T,v-z,V-Z,0-9])([a-h,A-H,j-n,J-N,p-z,P-Z,0-9])(\d{6}))$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 9 9) (re.union (re.range "a" "h") (str.to.re ",") (re.range "A" "H") (re.range "j" "n") (re.range "J" "N") (re.range "p" "z") (re.range "P" "Z") (re.range "0" "9"))) (re.union (re.range "a" "h") (str.to.re ",") (re.range "A" "H") (re.range "j" "n") (re.range "J" "N") (str.to.re "p") (str.to.re "P") (re.range "r" "t") (re.range "R" "T") (re.range "v" "z") (re.range "V" "Z") (re.range "0" "9")) (re.union (re.range "a" "h") (str.to.re ",") (re.range "A" "H") (re.range "j" "n") (re.range "J" "N") (re.range "p" "z") (re.range "P" "Z") (re.range "0" "9")) ((_ re.loop 6 6) (re.range "0" "9"))))))
; ^[A-Z]\d{2}(\.\d){0,1}$
(assert (not (str.in.re X (re.++ (re.range "A" "Z") ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") (re.range "0" "9"))) (str.to.re "\x0a")))))
; %3fc=UI2GmbHbacktrust\x2EcomSpediaReferer\x3ASubject\x3aHost\x3apasscorrect\x3B
(assert (not (str.in.re X (str.to.re "%3fc=UI2GmbHbacktrust.comSpediaReferer:Subject:Host:passcorrect;\x0a"))))
; ^([0-9]{5})([\-]{1}[0-9]{4})?$
(assert (str.in.re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.opt (re.++ ((_ re.loop 1 1) (str.to.re "-")) ((_ re.loop 4 4) (re.range "0" "9")))) (str.to.re "\x0a"))))
(check-sat)
