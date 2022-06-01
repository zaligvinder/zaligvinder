(declare-const X String)
; alert\d+an.*Spyiz=e2give\.comrichfind\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "alert") (re.+ (re.range "0" "9")) (str.to_re "an") (re.* re.allchar) (str.to_re "Spyiz=e2give.comrichfind.com\u{a}"))))
(check-sat)
