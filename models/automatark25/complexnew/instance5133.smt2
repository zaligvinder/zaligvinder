(declare-const X String)
; /filename=[^\n]*\x2erp/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".rp/i\x0a")))))
; client\x2Ebaigoo\x2EcomUser\x3A
(assert (not (str.in.re X (str.to.re "client.baigoo.comUser:\x0a"))))
; messages.*Windows.*From\x3AX-Mailer\x3a+\x2Fcbn\x2FearchSchwindler
(assert (str.in.re X (re.++ (str.to.re "messages") (re.* re.allchar) (str.to.re "Windows") (re.* re.allchar) (str.to.re "From:X-Mailer") (re.+ (str.to.re ":")) (str.to.re "/cbn/earchSchwindler\x0a"))))
; WebsiteUser-Agent\x3Ahttphostfast-look\x2Ecom
(assert (str.in.re X (str.to.re "WebsiteUser-Agent:httphostfast-look.com\x0a")))
; for[^\n\r]*Host\x3A\sinternalcyber@yahoo\x2EcomHeadersRedirection
(assert (str.in.re X (re.++ (str.to.re "for") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Host:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "internalcyber@yahoo.comHeadersRedirection\x0a"))))
(check-sat)
