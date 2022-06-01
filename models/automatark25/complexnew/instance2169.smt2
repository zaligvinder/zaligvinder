(declare-const X String)
; ^(.)+\.(jpg|jpeg|JPG|JPEG)$
(assert (str.in_re X (re.++ (re.+ re.allchar) (str.to_re ".") (re.union (str.to_re "jpg") (str.to_re "jpeg") (str.to_re "JPG") (str.to_re "JPEG")) (str.to_re "\u{a}"))))
; as\u{2E}starware\u{2E}com.*Casino.*LOG.*FilteredHost\u{3A}e2give\.com\u{2F}newsurfer4\u{2F}
(assert (str.in_re X (re.++ (str.to_re "as.starware.com") (re.* re.allchar) (str.to_re "Casino") (re.* re.allchar) (str.to_re "LOG") (re.* re.allchar) (str.to_re "FilteredHost:e2give.com/newsurfer4/\u{a}"))))
(check-sat)
