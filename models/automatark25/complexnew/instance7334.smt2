(declare-const X String)
; IDENTIFY.*\x2Fezsb\d+X-Mailer\x3A
(assert (str.in.re X (re.++ (str.to.re "IDENTIFY") (re.* re.allchar) (str.to.re "/ezsb") (re.+ (re.range "0" "9")) (str.to.re "X-Mailer:\x13\x0a"))))
; /filename=[^\n]*\x2edib/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".dib/i\x0a"))))
; clvompycem\x2fcen\.vcn.*Host\x3A\s+toolbar_domain_redirectHost\x3a
(assert (str.in.re X (re.++ (str.to.re "clvompycem/cen.vcn") (re.* re.allchar) (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "toolbar_domain_redirectHost:\x0a"))))
(check-sat)
