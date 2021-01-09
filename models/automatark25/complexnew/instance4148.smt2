(declare-const X String)
; ^[^ ,0]*$
(assert (not (str.in.re X (re.++ (re.* (re.union (str.to.re " ") (str.to.re ",") (str.to.re "0"))) (str.to.re "\x0a")))))
; whenu\x2Ecom\d+Agent\stoWebupdate\.cgithisHost\x3aconnection
(assert (not (str.in.re X (re.++ (str.to.re "whenu.com\x1b") (re.+ (re.range "0" "9")) (str.to.re "Agent") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "toWebupdate.cgithisHost:connection\x0a")))))
; \x2Fsearchfast\x2F\s+Host\x3A\s+
(assert (not (str.in.re X (re.++ (str.to.re "/searchfast/") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a")))))
(check-sat)
