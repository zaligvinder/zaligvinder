(declare-const X String)
; /STOR\s+Lbtf\u{2e}ugz(\d{2}\u{2d}){2}\d{4}(\u{2d}\d{2}){3}\u{2e}ugz/
(assert (str.in_re X (re.++ (str.to_re "/STOR") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Lbtf.ugz") ((_ re.loop 2 2) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "-"))) ((_ re.loop 4 4) (re.range "0" "9")) ((_ re.loop 3 3) (re.++ (str.to_re "-") ((_ re.loop 2 2) (re.range "0" "9")))) (str.to_re ".ugz/\u{a}"))))
; tb\u{2E}freeprod\u{2E}com\s+Web\.fcgiclvompycem\u{2f}cen\.vcn
(assert (str.in_re X (re.++ (str.to_re "tb.freeprod.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Web.fcgiclvompycem/cen.vcn\u{a}"))))
(check-sat)
