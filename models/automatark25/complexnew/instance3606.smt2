(declare-const X String)
; (\n\r)   replacement string---->\n
(assert (not (str.in.re X (str.to.re "\x0a\x0d   replacement string---->\x0a\x0a"))))
; /filename=[^\n]*\x2evqf/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".vqf/i\x0a"))))
; whenu\x2Ecom\d+Agent\stoWebupdate\.cgithisHost\x3aconnection
(assert (not (str.in.re X (re.++ (str.to.re "whenu.com\x1b") (re.+ (re.range "0" "9")) (str.to.re "Agent") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "toWebupdate.cgithisHost:connection\x0a")))))
; ServerAgentX-Mailer\x3aTencentTraveler
(assert (str.in.re X (str.to.re "ServerAgentX-Mailer:\x13TencentTraveler\x0a")))
(check-sat)
