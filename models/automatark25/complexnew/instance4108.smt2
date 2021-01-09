(declare-const X String)
; Host\x3A\d+Host\x3A.*communitytipHost\x3AGirafaClient
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re "Host:") (re.* re.allchar) (str.to.re "communitytipHost:GirafaClient\x13\x0a"))))
; \x0D\x0ACurrent\x2EearthlinkSpyBuddy
(assert (not (str.in.re X (str.to.re "\x0d\x0aCurrent.earthlinkSpyBuddy\x0a"))))
; ([1-9]{1,2})?(d|D)([1-9]{1,3})((\+|-)([1-9]{1,3}))?
(assert (not (str.in.re X (re.++ (re.opt ((_ re.loop 1 2) (re.range "1" "9"))) (re.union (str.to.re "d") (str.to.re "D")) ((_ re.loop 1 3) (re.range "1" "9")) (re.opt (re.++ (re.union (str.to.re "+") (str.to.re "-")) ((_ re.loop 1 3) (re.range "1" "9")))) (str.to.re "\x0a")))))
; /\x2eslk([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.slk") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; security\d+Redirector\x22ServerHost\x3AX-Mailer\x3A
(assert (str.in.re X (re.++ (str.to.re "security") (re.+ (re.range "0" "9")) (str.to.re "Redirector\x22ServerHost:X-Mailer:\x13\x0a"))))
(check-sat)
