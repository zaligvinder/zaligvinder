(declare-const X String)
; ovpl\s+\u{7D}\u{7B}Port\u{3A}.*SOAPAction\u{3A}.*adfsgecoiwnfHost\u{3A}\u{3F}search\u{3D}
(assert (str.in_re X (re.++ (str.to_re "ovpl") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "}{Port:") (re.* re.allchar) (str.to_re "SOAPAction:") (re.* re.allchar) (str.to_re "adfsgecoiwnf\u{1b}Host:?search=\u{a}"))))
; protocolNetControl\u{2E}ServerKEYLOGGERUser-Agent\u{3A}
(assert (not (str.in_re X (str.to_re "protocolNetControl.Server\u{13}KEYLOGGERUser-Agent:\u{a}"))))
; 100013Agentsvr\u{5E}\u{5E}MerlinIPBeta\s\u{3E}\u{3C}
(assert (not (str.in_re X (re.++ (str.to_re "100013Agentsvr^^Merlin\u{13}IPBeta") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "><\u{a}")))))
; weatherSubject\u{3a}X-Mailer\u{3a}TOOLBAR\u{2F}newsurfer4\u{2F}
(assert (str.in_re X (str.to_re "weatherSubject:X-Mailer:\u{13}TOOLBAR/newsurfer4/\u{a}")))
; ^(3[0-1]|2[0-9]|1[0-9]|0[1-9])[\s{1}|\/|-](Jan|JAN|Feb|FEB|Mar|MAR|Apr|APR|May|MAY|Jun|JUN|Jul|JUL|Aug|AUG|Sep|SEP|Oct|OCT|Nov|NOV|Dec|DEC)[\s{1}|\/|-]\d{4}$
(assert (not (str.in_re X (re.++ (re.union (re.++ (str.to_re "3") (re.range "0" "1")) (re.++ (str.to_re "2") (re.range "0" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "0") (re.range "1" "9"))) (re.union (str.to_re "{") (str.to_re "1") (str.to_re "}") (str.to_re "|") (str.to_re "/") (str.to_re "-") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (re.union (str.to_re "Jan") (str.to_re "JAN") (str.to_re "Feb") (str.to_re "FEB") (str.to_re "Mar") (str.to_re "MAR") (str.to_re "Apr") (str.to_re "APR") (str.to_re "May") (str.to_re "MAY") (str.to_re "Jun") (str.to_re "JUN") (str.to_re "Jul") (str.to_re "JUL") (str.to_re "Aug") (str.to_re "AUG") (str.to_re "Sep") (str.to_re "SEP") (str.to_re "Oct") (str.to_re "OCT") (str.to_re "Nov") (str.to_re "NOV") (str.to_re "Dec") (str.to_re "DEC")) (re.union (str.to_re "{") (str.to_re "1") (str.to_re "}") (str.to_re "|") (str.to_re "/") (str.to_re "-") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)
