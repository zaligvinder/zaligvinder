(declare-const X String)
; ^[a-zA-Z0-9]+$
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "\x0a"))))
; welcomeforToolbarHost\x3A
(assert (not (str.in.re X (str.to.re "welcomeforToolbarHost:\x0a"))))
; \b([0-1]?\d{1,2}|2[0-4]\d|25[0-5])(\.([0-1]?\d{1,2}|2[0-4]\d|25[0-5])){3}\b
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.opt (re.range "0" "1")) ((_ re.loop 1 2) (re.range "0" "9"))) (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "25") (re.range "0" "5"))) ((_ re.loop 3 3) (re.++ (str.to.re ".") (re.union (re.++ (re.opt (re.range "0" "1")) ((_ re.loop 1 2) (re.range "0" "9"))) (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "25") (re.range "0" "5"))))) (str.to.re "\x0a")))))
; Host\x3A\s+Agentbody=\x2521\x2521\x2521Optix
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Agentbody=%21%21%21Optix\x13\x0a"))))
; on\dName=Your\+Host\+is\x3AcdpViewHost\x3AUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "on") (re.range "0" "9") (str.to.re "Name=Your+Host+is:cdpViewHost:User-Agent:\x0a")))))
(check-sat)
