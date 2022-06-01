(declare-const X String)
; ^(([a-zA-Z]{2})([0-9]{6}))$
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 6 6) (re.range "0" "9"))))))
; /Content-Disposition\u{3a}\u{20}inline\u{3b}[^\u{d}\u{a}]filename=[a-z]{5,8}\d{2,3}\.pdf\u{d}\u{a}/Hm
(assert (str.in_re X (re.++ (str.to_re "/Content-Disposition: inline;") (re.union (str.to_re "\u{d}") (str.to_re "\u{a}")) (str.to_re "filename=") ((_ re.loop 5 8) (re.range "a" "z")) ((_ re.loop 2 3) (re.range "0" "9")) (str.to_re ".pdf\u{d}\u{a}/Hm\u{a}"))))
; Referer\u{3a}Host\u{3a}port\u{3a}activity
(assert (not (str.in_re X (str.to_re "Referer:Host:port:activity\u{a}"))))
; <[^>]*name[\s]*=[\s]*"?[^\w_]*"?[^>]*>
(assert (str.in_re X (re.++ (str.to_re "<") (re.* (re.comp (str.to_re ">"))) (str.to_re "name") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "=") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (str.to_re "\u{22}")) (re.* (re.union (str.to_re "_") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.opt (str.to_re "\u{22}")) (re.* (re.comp (str.to_re ">"))) (str.to_re ">\u{a}"))))
; libManager\u{2E}dll\u{5E}get
(assert (str.in_re X (str.to_re "libManager.dll^get\u{a}")))
(check-sat)
