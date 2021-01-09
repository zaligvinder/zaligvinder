(declare-const X String)
; /\x2eses([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.ses") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; whenu\x2Ecom\d+Agent\stoWebupdate\.cgithisHost\x3aconnection
(assert (not (str.in.re X (re.++ (str.to.re "whenu.com\x1b") (re.+ (re.range "0" "9")) (str.to.re "Agent") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "toWebupdate.cgithisHost:connection\x0a")))))
; com\x2Findex\.php\?tpid=onspyblpatUser-Agent\x3ASurveillance
(assert (not (str.in.re X (str.to.re "com/index.php?tpid=onspyblpatUser-Agent:Surveillance\x13\x0a"))))
(check-sat)
