(declare-const X String)
; Host\u{3A}Host\u{3A}alertseqepagqfphv\u{2f}sfd
(assert (not (str.in_re X (str.to_re "Host:Host:alertseqepagqfphv/sfd\u{a}"))))
; Download\d+ocllceclbhs\u{2f}gth
(assert (not (str.in_re X (re.++ (str.to_re "Download") (re.+ (re.range "0" "9")) (str.to_re "ocllceclbhs/gth\u{a}")))))
; ^([a-hA-H]{1}[1-8]{1})$
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") ((_ re.loop 1 1) (re.union (re.range "a" "h") (re.range "A" "H"))) ((_ re.loop 1 1) (re.range "1" "8"))))))
; Host\u{3A}stech\u{2E}web-nexus\u{2E}netHost\u{3A}
(assert (str.in_re X (str.to_re "Host:stech.web-nexus.netHost:\u{a}")))
(check-sat)
