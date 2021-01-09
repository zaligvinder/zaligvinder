(declare-const X String)
; Stealth\x2EphpSpyAgentHost\x3AIterenetUser-Agent\x3AHost\x3AHost\x3Aorigin\x3Dsidefind
(assert (str.in.re X (str.to.re "Stealth.phpSpyAgentHost:IterenetUser-Agent:Host:Host:origin=sidefind\x0a")))
; Host\x3AHost\x3Aalertseqepagqfphv\x2fsfd
(assert (str.in.re X (str.to.re "Host:Host:alertseqepagqfphv/sfd\x0a")))
(check-sat)
