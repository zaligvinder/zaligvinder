(declare-const X String)
; Reports[^\n\r]*User-Agent\x3A.*largePass-Onseqepagqfphv\x2fsfd
(assert (not (str.in.re X (re.++ (str.to.re "Reports") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "User-Agent:") (re.* re.allchar) (str.to.re "largePass-Onseqepagqfphv/sfd\x0a")))))
; (^(09|9)[1][1-9]\\d{7}$)|(^(09|9)[3][12456]\\d{7}$)
(assert (str.in.re X (re.union (re.++ (re.union (str.to.re "09") (str.to.re "9")) (str.to.re "1") (re.range "1" "9") (str.to.re "\x5c") ((_ re.loop 7 7) (str.to.re "d"))) (re.++ (str.to.re "\x0a") (re.union (str.to.re "09") (str.to.re "9")) (str.to.re "3") (re.union (str.to.re "1") (str.to.re "2") (str.to.re "4") (str.to.re "5") (str.to.re "6")) (str.to.re "\x5c") ((_ re.loop 7 7) (str.to.re "d"))))))
; Host\x3a[^\n\r]*A-311\s+lnzzlnbk\x2fpkrm\.finSubject\x3aBasic
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "A-311") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "lnzzlnbk/pkrm.finSubject:Basic\x0a")))))
; www\.actualnames\.com\s+toolbar_domain_redirect\s+Contactfrom=GhostVoiceServer
(assert (str.in.re X (re.++ (str.to.re "www.actualnames.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "toolbar_domain_redirect") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Contactfrom=GhostVoiceServer\x0a"))))
(check-sat)
