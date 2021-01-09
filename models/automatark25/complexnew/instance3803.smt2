(declare-const X String)
; AgentCSmtpsidebar\.activeshopper\.comTry2Find
(assert (str.in.re X (str.to.re "AgentCSmtpsidebar.activeshopper.comTry2Find\x0a")))
; tv\x2E180solutions\x2Ecom\s+have\s+Dayspassword\x3B0\x3BIncorrect
(assert (str.in.re X (re.++ (str.to.re "tv.180solutions.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "have") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Dayspassword;0;Incorrect\x0a"))))
; HXLogOnlyanHost\x3AspasHost\x3A
(assert (str.in.re X (str.to.re "HXLogOnlyanHost:spasHost:\x0a")))
; (http://|)(www\.)?([^\.]+)\.(\w{2}|(com|net|org|edu|int|mil|gov|arpa|biz|aero|name|coop|info|pro|museum))$
(assert (str.in.re X (re.++ (str.to.re "http://") (re.opt (str.to.re "www.")) (re.+ (re.comp (str.to.re "."))) (str.to.re ".") (re.union ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "com") (str.to.re "net") (str.to.re "org") (str.to.re "edu") (str.to.re "int") (str.to.re "mil") (str.to.re "gov") (str.to.re "arpa") (str.to.re "biz") (str.to.re "aero") (str.to.re "name") (str.to.re "coop") (str.to.re "info") (str.to.re "pro") (str.to.re "museum")) (str.to.re "\x0a"))))
; /\x2exfdl([\?\x5c\x2f]|$)/miU
(assert (not (str.in.re X (re.++ (str.to.re "/.xfdl") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/miU\x0a")))))
(check-sat)
