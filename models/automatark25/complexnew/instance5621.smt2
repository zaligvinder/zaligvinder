(declare-const X String)
; passcorrect\u{3B}\s+\u{2F}cbn\u{2F}node=Host\u{3A}\u{3F}search\u{3D}version
(assert (not (str.in_re X (re.++ (str.to_re "passcorrect;") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/cbn/node=Host:?search=version\u{a}")))))
; [-+]?((\.[0-9]+|[0-9]+\.[0-9]+)([eE][-+][0-9]+)?|[0-9]+)
(assert (not (str.in_re X (re.++ (re.opt (re.union (str.to_re "-") (str.to_re "+"))) (re.union (re.++ (re.union (re.++ (str.to_re ".") (re.+ (re.range "0" "9"))) (re.++ (re.+ (re.range "0" "9")) (str.to_re ".") (re.+ (re.range "0" "9")))) (re.opt (re.++ (re.union (str.to_re "e") (str.to_re "E")) (re.union (str.to_re "-") (str.to_re "+")) (re.+ (re.range "0" "9"))))) (re.+ (re.range "0" "9"))) (str.to_re "\u{a}")))))
; www\u{2E}pcsentinelsoftware\u{2E}com
(assert (not (str.in_re X (str.to_re "www.pcsentinelsoftware.com\u{a}"))))
(check-sat)
