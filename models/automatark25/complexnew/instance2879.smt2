(declare-const X String)
; (<(!--.*|script)(.|\n[^<])*(--|script)>)|(<|<)(/?[\w!?]+)\s?[^<]*(>|>)|(\&[\w]+\;)
(assert (str.in.re X (re.union (re.++ (str.to.re "<") (re.union (re.++ (str.to.re "!--") (re.* re.allchar)) (str.to.re "script")) (re.* (re.union re.allchar (re.++ (str.to.re "\x0a") (re.comp (str.to.re "<"))))) (re.union (str.to.re "--") (str.to.re "script")) (str.to.re ">")) (re.++ (str.to.re "<") (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* (re.comp (str.to.re "<"))) (str.to.re ">") (re.opt (str.to.re "/")) (re.+ (re.union (str.to.re "!") (str.to.re "?") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")))) (re.++ (str.to.re "\x0a&") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re ";")))))
; \x2FNFO\x2CRegistered.*Host\x3A\s+TPSystemHost\x3A
(assert (not (str.in.re X (re.++ (str.to.re "/NFO,Registered") (re.* re.allchar) (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "TPSystemHost:\x0a")))))
; /\x2fx\x2f[0-9a-z]{8,10}\x2f[0-9a-f]{32}\x2fAA\x2f0$/U
(assert (not (str.in.re X (re.++ (str.to.re "//x/") ((_ re.loop 8 10) (re.union (re.range "0" "9") (re.range "a" "z"))) (str.to.re "/") ((_ re.loop 32 32) (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to.re "/AA/0/U\x0a")))))
(check-sat)
