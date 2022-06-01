(declare-const X String)
; Pass-Onseqepagqfphv\u{2f}sfdcargo=dnsgpstool\u{2e}globaladserver\u{2e}com
(assert (not (str.in_re X (str.to_re "Pass-Onseqepagqfphv/sfdcargo=dnsgpstool.globaladserver.com\u{a}"))))
; /^\/[A-Z]{6}$/U
(assert (not (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 6 6) (re.range "A" "Z")) (str.to_re "/U\u{a}")))))
(check-sat)
