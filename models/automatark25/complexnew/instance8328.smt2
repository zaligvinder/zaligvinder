(declare-const X String)
; ovpl\s+\x7D\x7BPort\x3A.*SOAPAction\x3A.*adfsgecoiwnfHost\x3A\x3Fsearch\x3D
(assert (str.in.re X (re.++ (str.to.re "ovpl") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "}{Port:") (re.* re.allchar) (str.to.re "SOAPAction:") (re.* re.allchar) (str.to.re "adfsgecoiwnf\x1bHost:?search=\x0a"))))
; protocolNetControl\x2EServerKEYLOGGERUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "protocolNetControl.Server\x13KEYLOGGERUser-Agent:\x0a"))))
; 100013Agentsvr\x5E\x5EMerlinIPBeta\s\x3E\x3C
(assert (not (str.in.re X (re.++ (str.to.re "100013Agentsvr^^Merlin\x13IPBeta") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "><\x0a")))))
; weatherSubject\x3aX-Mailer\x3aTOOLBAR\x2Fnewsurfer4\x2F
(assert (str.in.re X (str.to.re "weatherSubject:X-Mailer:\x13TOOLBAR/newsurfer4/\x0a")))
; ^(3[0-1]|2[0-9]|1[0-9]|0[1-9])[\s{1}|\/|-](Jan|JAN|Feb|FEB|Mar|MAR|Apr|APR|May|MAY|Jun|JUN|Jul|JUL|Aug|AUG|Sep|SEP|Oct|OCT|Nov|NOV|Dec|DEC)[\s{1}|\/|-]\d{4}$
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "3") (re.range "0" "1")) (re.++ (str.to.re "2") (re.range "0" "9")) (re.++ (str.to.re "1") (re.range "0" "9")) (re.++ (str.to.re "0") (re.range "1" "9"))) (re.union (str.to.re "{") (str.to.re "1") (str.to.re "}") (str.to.re "|") (str.to.re "/") (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (re.union (str.to.re "Jan") (str.to.re "JAN") (str.to.re "Feb") (str.to.re "FEB") (str.to.re "Mar") (str.to.re "MAR") (str.to.re "Apr") (str.to.re "APR") (str.to.re "May") (str.to.re "MAY") (str.to.re "Jun") (str.to.re "JUN") (str.to.re "Jul") (str.to.re "JUL") (str.to.re "Aug") (str.to.re "AUG") (str.to.re "Sep") (str.to.re "SEP") (str.to.re "Oct") (str.to.re "OCT") (str.to.re "Nov") (str.to.re "NOV") (str.to.re "Dec") (str.to.re "DEC")) (re.union (str.to.re "{") (str.to.re "1") (str.to.re "}") (str.to.re "|") (str.to.re "/") (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
