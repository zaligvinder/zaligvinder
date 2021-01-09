(declare-const X String)
; NetControl\x2EServerNetTrackerSiLENTHost\x3A
(assert (str.in.re X (str.to.re "NetControl.Server\x13NetTrackerSiLENTHost:\x0a")))
; \d[\d\,\.]+
(assert (not (str.in.re X (re.++ (re.range "0" "9") (re.+ (re.union (re.range "0" "9") (str.to.re ",") (str.to.re "."))) (str.to.re "\x0a")))))
; c\.goclick\.com[^\n\r]*is\s+URLBlaze
(assert (str.in.re X (re.++ (str.to.re "c.goclick.com") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "is") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "URLBlaze\x0a"))))
(check-sat)
