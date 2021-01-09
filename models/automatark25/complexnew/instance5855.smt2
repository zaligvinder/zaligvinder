(declare-const X String)
; Hours\w+User-Agent\x3AChildWebGuardian
(assert (not (str.in.re X (re.++ (str.to.re "Hours") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "User-Agent:ChildWebGuardian\x0a")))))
; ^[1-9]{1}$|^[1-4]{1}[0-9]{1}$|^50$
(assert (not (str.in.re X (re.union ((_ re.loop 1 1) (re.range "1" "9")) (re.++ ((_ re.loop 1 1) (re.range "1" "4")) ((_ re.loop 1 1) (re.range "0" "9"))) (str.to.re "50\x0a")))))
; /\/[a-f0-9]{32}\/[a-f0-9]{32}\x22/R
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "\x22/R\x0a")))))
; ^[0-9]{4} {0,1}[A-Z]{2}$
(assert (str.in.re X (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (str.to.re " ")) ((_ re.loop 2 2) (re.range "A" "Z")) (str.to.re "\x0a"))))
; ([.])([a-z,1-9]{3,4})(\/)
(assert (not (str.in.re X (re.++ (str.to.re ".") ((_ re.loop 3 4) (re.union (re.range "a" "z") (str.to.re ",") (re.range "1" "9"))) (str.to.re "/\x0a")))))
(check-sat)
