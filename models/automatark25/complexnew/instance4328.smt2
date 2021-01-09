(declare-const X String)
; www\x2e2-seek\x2ecom\x2fsearch\s+TPSystem
(assert (str.in.re X (re.++ (str.to.re "www.2-seek.com/search") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "TPSystem\x0a"))))
; IDENTIFY.*\x2Fezsb\d+X-Mailer\x3A
(assert (not (str.in.re X (re.++ (str.to.re "IDENTIFY") (re.* re.allchar) (str.to.re "/ezsb") (re.+ (re.range "0" "9")) (str.to.re "X-Mailer:\x13\x0a")))))
; /\x2f\x24\{\x23[^\x2f{}]+?\}(\.action)?\x2f?$/miU
(assert (not (str.in.re X (re.++ (str.to.re "//${#") (re.+ (re.union (str.to.re "/") (str.to.re "{") (str.to.re "}"))) (str.to.re "}") (re.opt (str.to.re ".action")) (re.opt (str.to.re "/")) (str.to.re "/miU\x0a")))))
; ^(\+)?([9]{1}[2]{1})?-? ?(\()?([0]{1})?[1-9]{2,4}(\))?-? ??(\()?[1-9]{4,7}(\))?$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "+")) (re.opt (re.++ ((_ re.loop 1 1) (str.to.re "9")) ((_ re.loop 1 1) (str.to.re "2")))) (re.opt (str.to.re "-")) (re.opt (str.to.re " ")) (re.opt (str.to.re "(")) (re.opt ((_ re.loop 1 1) (str.to.re "0"))) ((_ re.loop 2 4) (re.range "1" "9")) (re.opt (str.to.re ")")) (re.opt (str.to.re "-")) (re.opt (str.to.re " ")) (re.opt (str.to.re "(")) ((_ re.loop 4 7) (re.range "1" "9")) (re.opt (str.to.re ")")) (str.to.re "\x0a")))))
; SSKCstech\x2Eweb-nexus\x2Enet
(assert (not (str.in.re X (str.to.re "SSKCstech.web-nexus.net\x0a"))))
(check-sat)
