(declare-const X String)
; (<(!--.*|script)(.|\n[^<])*(--|script)>)|(<|<)(/?[\w!?]+)\s?[^<]*(>|>)|(\&[\w]+\;)
(assert (not (str.in.re X (re.union (re.++ (str.to.re "<") (re.union (re.++ (str.to.re "!--") (re.* re.allchar)) (str.to.re "script")) (re.* (re.union re.allchar (re.++ (str.to.re "\x0a") (re.comp (str.to.re "<"))))) (re.union (str.to.re "--") (str.to.re "script")) (str.to.re ">")) (re.++ (str.to.re "<") (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* (re.comp (str.to.re "<"))) (str.to.re ">") (re.opt (str.to.re "/")) (re.+ (re.union (str.to.re "!") (str.to.re "?") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")))) (re.++ (str.to.re "\x0a&") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re ";"))))))
; ^[A-Z]{2}[0-9]{6}[A-DFM]{1}$
(assert (str.in.re X (re.++ ((_ re.loop 2 2) (re.range "A" "Z")) ((_ re.loop 6 6) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (re.range "A" "D") (str.to.re "F") (str.to.re "M"))) (str.to.re "\x0a"))))
(check-sat)
