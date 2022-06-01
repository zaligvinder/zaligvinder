(declare-const X String)
; ^([a-hA-H]{1}[1-8]{1})$
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") ((_ re.loop 1 1) (re.union (re.range "a" "h") (re.range "A" "H"))) ((_ re.loop 1 1) (re.range "1" "8"))))))
; Host\u{3A}Host\u{3A}alertseqepagqfphv\u{2f}sfd
(assert (not (str.in_re X (str.to_re "Host:Host:alertseqepagqfphv/sfd\u{a}"))))
; Servidor\u{2E}home\u{2E}edonkey\u{2E}com
(assert (not (str.in_re X (str.to_re "Servidor.\u{13}home.edonkey.com\u{a}"))))
; httphostHost\u{3a}Agent\u{22}
(assert (not (str.in_re X (str.to_re "httphostHost:Agent\u{22}\u{a}"))))
; User-Agent\u{3a}\u{2F}newsurfer4\u{2F}
(assert (not (str.in_re X (str.to_re "User-Agent:/newsurfer4/\u{a}"))))
(check-sat)
