(declare-const X String)
; ^[ \t]+|[ \t]+$
(assert (not (str.in.re X (re.union (re.+ (re.union (str.to.re " ") (str.to.re "\x09"))) (re.++ (re.+ (re.union (str.to.re " ") (str.to.re "\x09"))) (str.to.re "\x0a"))))))
; /^\/\d+\.ld$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") (re.+ (re.range "0" "9")) (str.to.re ".ld/U\x0a")))))
; Stealth\x2EphpSpyAgentHost\x3AIterenetUser-Agent\x3AHost\x3AHost\x3Aorigin\x3Dsidefind
(assert (not (str.in.re X (str.to.re "Stealth.phpSpyAgentHost:IterenetUser-Agent:Host:Host:origin=sidefind\x0a"))))
; \x2APORT3\x2A\s+Warez.*X-Mailer\x3ASubject\x3AKEY=
(assert (not (str.in.re X (re.++ (str.to.re "*PORT3*") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Warez") (re.* re.allchar) (str.to.re "X-Mailer:\x13Subject:KEY=\x0a")))))
(check-sat)
