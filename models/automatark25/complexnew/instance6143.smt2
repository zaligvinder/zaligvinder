(declare-const X String)
; RXnewads1\x2EcomSPYcom\x2Findex\.php\?tpid=
(assert (not (str.in.re X (str.to.re "RXnewads1.comSPYcom/index.php?tpid=\x0a"))))
; ^(((\\\\([^\\/:\*\?"\|<>\. ]+))|([a-zA-Z]:\\))(([^\\/:\*\?"\|<>\. ]*)([\\]*))*)$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.union (re.++ (str.to.re "\x5c\x5c") (re.+ (re.union (str.to.re "\x5c") (str.to.re "/") (str.to.re ":") (str.to.re "*") (str.to.re "?") (str.to.re "\x22") (str.to.re "|") (str.to.re "<") (str.to.re ">") (str.to.re ".") (str.to.re " ")))) (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to.re ":\x5c"))) (re.* (re.++ (re.* (re.union (str.to.re "\x5c") (str.to.re "/") (str.to.re ":") (str.to.re "*") (str.to.re "?") (str.to.re "\x22") (str.to.re "|") (str.to.re "<") (str.to.re ">") (str.to.re ".") (str.to.re " "))) (re.* (str.to.re "\x5c"))))))))
; ([A-Za-z]{2}|[A-Za-z]\d|\d[A-Za-z])[A-Za-z]{0,1}\d(\d{0,3})[A-Za-z]{0,1}
(assert (not (str.in.re X (re.++ (re.union ((_ re.loop 2 2) (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.++ (re.union (re.range "A" "Z") (re.range "a" "z")) (re.range "0" "9")) (re.++ (re.range "0" "9") (re.union (re.range "A" "Z") (re.range "a" "z")))) (re.opt (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.range "0" "9") ((_ re.loop 0 3) (re.range "0" "9")) (re.opt (re.union (re.range "A" "Z") (re.range "a" "z"))) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2expm/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xpm/i\x0a")))))
(check-sat)
