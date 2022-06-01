(declare-const X String)
; ^[0-9]*(\.)?[0-9]+$
(assert (str.in_re X (re.++ (re.* (re.range "0" "9")) (re.opt (str.to_re ".")) (re.+ (re.range "0" "9")) (str.to_re "\u{a}"))))
; <[^>]*name[\s]*=[\s]*"?[^\w_]*"?[^>]*>
(assert (not (str.in_re X (re.++ (str.to_re "<") (re.* (re.comp (str.to_re ">"))) (str.to_re "name") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "=") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (str.to_re "\u{22}")) (re.* (re.union (str.to_re "_") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.opt (str.to_re "\u{22}")) (re.* (re.comp (str.to_re ">"))) (str.to_re ">\u{a}")))))
; User-Agent\u{3a}User-Agent\u{3A}Report\u{2E}Host\u{3A}fhfksjzsfu\u{2f}ahm\.uqs
(assert (str.in_re X (str.to_re "User-Agent:User-Agent:Report.Host:fhfksjzsfu/ahm.uqs\u{a}")))
(check-sat)
