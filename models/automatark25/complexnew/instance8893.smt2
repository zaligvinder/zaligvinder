(declare-const X String)
; Toolbar\s+pjpoptwql\x2frlnjSubject\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Toolbar") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "pjpoptwql/rlnjSubject:\x0a")))))
; ([0-1][0-9]|2[0-4]):(0[0-9]|[1-5][0-9]):(0[0-9]|[1-5][0-9])(\.[0-999])?((\+|-)([0-1][0-9]|2[0-4]):(0[0-9]|[1-5][0-9])|Z)?
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "4"))) (str.to.re ":") (re.union (re.++ (str.to.re "0") (re.range "0" "9")) (re.++ (re.range "1" "5") (re.range "0" "9"))) (str.to.re ":") (re.union (re.++ (str.to.re "0") (re.range "0" "9")) (re.++ (re.range "1" "5") (re.range "0" "9"))) (re.opt (re.++ (str.to.re ".") (re.union (re.range "0" "9") (str.to.re "9")))) (re.opt (re.union (re.++ (re.union (str.to.re "+") (str.to.re "-")) (re.union (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "4"))) (str.to.re ":") (re.union (re.++ (str.to.re "0") (re.range "0" "9")) (re.++ (re.range "1" "5") (re.range "0" "9")))) (str.to.re "Z"))) (str.to.re "\x0a")))))
; ^[A-Z1-9]{5}-[A-Z1-9]{5}-[A-Z1-9]{5}-[A-Z1-9]{5}-[A-Z1-9]{5}$
(assert (str.in.re X (re.++ ((_ re.loop 5 5) (re.union (re.range "A" "Z") (re.range "1" "9"))) (str.to.re "-") ((_ re.loop 5 5) (re.union (re.range "A" "Z") (re.range "1" "9"))) (str.to.re "-") ((_ re.loop 5 5) (re.union (re.range "A" "Z") (re.range "1" "9"))) (str.to.re "-") ((_ re.loop 5 5) (re.union (re.range "A" "Z") (re.range "1" "9"))) (str.to.re "-") ((_ re.loop 5 5) (re.union (re.range "A" "Z") (re.range "1" "9"))) (str.to.re "\x0a"))))
; ^-?((\d*\.\d+)|(\d+\.\d*)|(\d+\.\d+))$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "-")) (re.union (re.++ (re.* (re.range "0" "9")) (str.to.re ".") (re.+ (re.range "0" "9"))) (re.++ (re.+ (re.range "0" "9")) (str.to.re ".") (re.* (re.range "0" "9"))) (re.++ (re.+ (re.range "0" "9")) (str.to.re ".") (re.+ (re.range "0" "9")))) (str.to.re "\x0a")))))
; (([a-zA-Z0-9\-]*\.{1,}){1,}[a-zA-Z0-9]*)
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.+ (re.++ (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "-"))) (re.+ (str.to.re ".")))) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")))))))
(check-sat)
