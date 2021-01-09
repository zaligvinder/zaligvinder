(declare-const X String)
; e2give\.com.*Host\x3A.*Host\x3a
(assert (str.in.re X (re.++ (str.to.re "e2give.com") (re.* re.allchar) (str.to.re "Host:") (re.* re.allchar) (str.to.re "Host:\x0a"))))
; \binterface\b.*(\bI[_]\w*\b)
(assert (str.in.re X (re.++ (str.to.re "interface") (re.* re.allchar) (str.to.re "\x0aI_") (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))))))
; /\x00hide hide\x22\x09\x22([a-z0-9\x5c\x2e\x3a]+\x2eexe|sh)/
(assert (not (str.in.re X (re.++ (str.to.re "/\x00hide hide\x22\x09\x22") (re.union (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "\x5c") (str.to.re ".") (str.to.re ":"))) (str.to.re ".exe")) (str.to.re "sh")) (str.to.re "/\x0a")))))
; ^[F][O][\s]?[0-9]{3}$
(assert (str.in.re X (re.++ (str.to.re "FO") (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a"))))
; ^(\d){7,8}$
(assert (str.in.re X (re.++ ((_ re.loop 7 8) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
