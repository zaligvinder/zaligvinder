(declare-const X String)
; /([etDZhns8dz]{1,3}k){3}[etDZhns8dz]{1,3}f[etDZhns8dz]{16}A/
(assert (not (str.in_re X (re.++ (str.to_re "/") ((_ re.loop 3 3) (re.++ ((_ re.loop 1 3) (re.union (str.to_re "e") (str.to_re "t") (str.to_re "D") (str.to_re "Z") (str.to_re "h") (str.to_re "n") (str.to_re "s") (str.to_re "8") (str.to_re "d") (str.to_re "z"))) (str.to_re "k"))) ((_ re.loop 1 3) (re.union (str.to_re "e") (str.to_re "t") (str.to_re "D") (str.to_re "Z") (str.to_re "h") (str.to_re "n") (str.to_re "s") (str.to_re "8") (str.to_re "d") (str.to_re "z"))) (str.to_re "f") ((_ re.loop 16 16) (re.union (str.to_re "e") (str.to_re "t") (str.to_re "D") (str.to_re "Z") (str.to_re "h") (str.to_re "n") (str.to_re "s") (str.to_re "8") (str.to_re "d") (str.to_re "z"))) (str.to_re "A/\u{a}")))))
; NavExcel\s+dist\u{2E}atlas\u{2D}ia\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "NavExcel") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "dist.atlas-ia.com\u{a}")))))
; \.com/(\d+)$
(assert (str.in_re X (re.++ (str.to_re ".com/") (re.+ (re.range "0" "9")) (str.to_re "\u{a}"))))
; www\u{2E}webcruiser\u{2E}ccgot
(assert (not (str.in_re X (str.to_re "www.webcruiser.ccgot\u{a}"))))
; Minutes\s+\u{2F}cgi\u{2F}logurl\.cgi\s+e2give\.com
(assert (not (str.in_re X (re.++ (str.to_re "Minutes") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/cgi/logurl.cgi") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "e2give.com\u{a}")))))
(check-sat)
