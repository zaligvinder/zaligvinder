(declare-const X String)
; ^[http://www.|www.][\S]+$
(assert (not (str.in.re X (re.++ (re.union (str.to.re "h") (str.to.re "t") (str.to.re "p") (str.to.re ":") (str.to.re "/") (str.to.re "w") (str.to.re ".") (str.to.re "|")) (re.+ (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))) (str.to.re "\x0a")))))
; ^[0-9]*[1-9]+[0-9]*$
(assert (str.in.re X (re.++ (re.* (re.range "0" "9")) (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")) (str.to.re "\x0a"))))
; ^[A-Z0-9]{8}-[A-Z0-9]{4}-[A-Z0-9]{4}-[A-Z0-9]{4}-[A-Z0-9]{12}$
(assert (str.in.re X (re.++ ((_ re.loop 8 8) (re.union (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "-") ((_ re.loop 4 4) (re.union (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "-") ((_ re.loop 4 4) (re.union (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "-") ((_ re.loop 4 4) (re.union (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "-") ((_ re.loop 12 12) (re.union (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "\x0a"))))
; (<(!--|script)(.|\n[^<])*(--|script)>)|(<|<)(/?[\w!?]+)\s?[^<]*(>|>)|(\&[\w]+\;)
(assert (str.in.re X (re.union (re.++ (str.to.re "<") (re.union (str.to.re "!--") (str.to.re "script")) (re.* (re.union re.allchar (re.++ (str.to.re "\x0a") (re.comp (str.to.re "<"))))) (re.union (str.to.re "--") (str.to.re "script")) (str.to.re ">")) (re.++ (str.to.re "<") (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* (re.comp (str.to.re "<"))) (str.to.re ">") (re.opt (str.to.re "/")) (re.+ (re.union (str.to.re "!") (str.to.re "?") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")))) (re.++ (str.to.re "\x0a&") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re ";")))))
(check-sat)
