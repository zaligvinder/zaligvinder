(declare-const X String)
; ^([a-hA-H]{1}[1-8]{1})$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 1 1) (re.union (re.range "a" "h") (re.range "A" "H"))) ((_ re.loop 1 1) (re.range "1" "8"))))))
; Host\x3AHost\x3Aalertseqepagqfphv\x2fsfd
(assert (not (str.in.re X (str.to.re "Host:Host:alertseqepagqfphv/sfd\x0a"))))
; Servidor\x2Ehome\x2Eedonkey\x2Ecom
(assert (not (str.in.re X (str.to.re "Servidor.\x13home.edonkey.com\x0a"))))
; httphostHost\x3aAgent\x22
(assert (not (str.in.re X (str.to.re "httphostHost:Agent\x22\x0a"))))
; User-Agent\x3a\x2Fnewsurfer4\x2F
(assert (not (str.in.re X (str.to.re "User-Agent:/newsurfer4/\x0a"))))
(check-sat)
