(declare-const X String)
; ((8|\+7)-?)?\(?\d{3,5}\)?-?\d{1}-?\d{1}-?\d{1}-?\d{1}-?\d{1}((-?\d{1})?-?\d{1})?
(assert (str.in.re X (re.++ (re.opt (re.++ (re.union (str.to.re "8") (str.to.re "+7")) (re.opt (str.to.re "-")))) (re.opt (str.to.re "(")) ((_ re.loop 3 5) (re.range "0" "9")) (re.opt (str.to.re ")")) (re.opt (str.to.re "-")) ((_ re.loop 1 1) (re.range "0" "9")) (re.opt (str.to.re "-")) ((_ re.loop 1 1) (re.range "0" "9")) (re.opt (str.to.re "-")) ((_ re.loop 1 1) (re.range "0" "9")) (re.opt (str.to.re "-")) ((_ re.loop 1 1) (re.range "0" "9")) (re.opt (str.to.re "-")) ((_ re.loop 1 1) (re.range "0" "9")) (re.opt (re.++ (re.opt (re.++ (re.opt (str.to.re "-")) ((_ re.loop 1 1) (re.range "0" "9")))) (re.opt (str.to.re "-")) ((_ re.loop 1 1) (re.range "0" "9")))) (str.to.re "\x0a"))))
; ^[A-Z]{3}(\d|[A-Z]){8,12}$
(assert (str.in.re X (re.++ ((_ re.loop 3 3) (re.range "A" "Z")) ((_ re.loop 8 12) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to.re "\x0a"))))
; Toolbar[^\n\r]*User-Agent\x3A\w+Host\x3A.*toX-Mailer\x3aLogsmax-Cookie\x3aAppName
(assert (str.in.re X (re.++ (str.to.re "Toolbar") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "User-Agent:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Host:") (re.* re.allchar) (str.to.re "toX-Mailer:\x13Logsmax-Cookie:AppName\x0a"))))
; /filename=[^\n]*\x2ewps/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".wps/i\x0a")))))
(check-sat)
