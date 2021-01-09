(declare-const X String)
; /filename=[^\n]*\x2elnk/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".lnk/i\x0a")))))
; WebsiteUser-Agent\x3Ahttphostfast-look\x2Ecom
(assert (str.in.re X (str.to.re "WebsiteUser-Agent:httphostfast-look.com\x0a")))
(check-sat)
