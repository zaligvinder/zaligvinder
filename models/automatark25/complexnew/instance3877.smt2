(declare-const X String)
; /bincode=Wz[0-9A-Za-z\x2b\x2f]{32}\x3d{0,2}$/Um
(assert (str.in.re X (re.++ (str.to.re "/bincode=Wz") ((_ re.loop 32 32) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "+") (str.to.re "/"))) ((_ re.loop 0 2) (str.to.re "=")) (str.to.re "/Um\x0a"))))
; ^[a-zA-Z]{1}[-][0-9]{7}[-][a-zA-Z]{1}$
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "-") ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 1 1) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "\x0a"))))
; We\d+pjpoptwql\x2frlnjX-Mailer\x3a
(assert (str.in.re X (re.++ (str.to.re "We") (re.+ (re.range "0" "9")) (str.to.re "pjpoptwql/rlnjX-Mailer:\x13\x0a"))))
; (^\+?1[0-7]\d(\.\d+)?$)|(^\+?([1-9])?\d(\.\d+)?$)|(^-180$)|(^-1[1-7]\d(\.\d+)?$)|(^-[1-9]\d(\.\d+)?$)|(^\-\d(\.\d+)?$)
(assert (str.in.re X (re.union (re.++ (re.opt (str.to.re "+")) (str.to.re "1") (re.range "0" "7") (re.range "0" "9") (re.opt (re.++ (str.to.re ".") (re.+ (re.range "0" "9"))))) (re.++ (re.opt (str.to.re "+")) (re.opt (re.range "1" "9")) (re.range "0" "9") (re.opt (re.++ (str.to.re ".") (re.+ (re.range "0" "9"))))) (str.to.re "-180") (re.++ (str.to.re "-1") (re.range "1" "7") (re.range "0" "9") (re.opt (re.++ (str.to.re ".") (re.+ (re.range "0" "9"))))) (re.++ (str.to.re "-") (re.range "1" "9") (re.range "0" "9") (re.opt (re.++ (str.to.re ".") (re.+ (re.range "0" "9"))))) (re.++ (str.to.re "\x0a-") (re.range "0" "9") (re.opt (re.++ (str.to.re ".") (re.+ (re.range "0" "9"))))))))
(check-sat)
