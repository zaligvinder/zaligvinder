(declare-const X String)
; activityHWAEHost\x3aMyWayServidor\x2EHANDYEmail
(assert (not (str.in.re X (str.to.re "activityHWAEHost:MyWayServidor.\x13HANDYEmail\x0a"))))
; /\x00{7}\x53\x00{3}\x16.{8}[^\x00]*?[\x22\x27\x29\x3b]/
(assert (not (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 7 7) (str.to.re "\x00")) (str.to.re "S") ((_ re.loop 3 3) (str.to.re "\x00")) (str.to.re "\x16") ((_ re.loop 8 8) re.allchar) (re.* (re.comp (str.to.re "\x00"))) (re.union (str.to.re "\x22") (str.to.re "'") (str.to.re ")") (str.to.re ";")) (str.to.re "/\x0a")))))
; Pass-Onseqepagqfphv\x2fsfdcargo=dnsgpstool\x2eglobaladserver\x2ecom
(assert (str.in.re X (str.to.re "Pass-Onseqepagqfphv/sfdcargo=dnsgpstool.globaladserver.com\x0a")))
(check-sat)
