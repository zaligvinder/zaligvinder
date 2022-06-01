(declare-const X String)
; [\u{1}-\u{8},\u{A}-\u{1F},\u{7F},\u{81},\u{8D},\u{8F},\u{90},\u{9D}]
(assert (str.in_re X (re.++ (re.union (re.range "\u{1}" "\u{8}") (str.to_re ",") (re.range "\u{a}" "\u{1f}") (str.to_re "\u{7f}") (str.to_re "\u{81}") (str.to_re "\u{8d}") (str.to_re "\u{8f}") (str.to_re "\u{90}") (str.to_re "\u{9d}")) (str.to_re "\u{a}"))))
; Spy\s+toolbar_domain_redirect
(assert (str.in_re X (re.++ (str.to_re "Spy") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "toolbar_domain_redirect\u{a}"))))
; /\u{2e}xml([\?\u{5c}\u{2f}]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.xml") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; ^[a-zA-Z_][a-zA-Z0-9_]*$
(assert (not (str.in_re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z") (str.to_re "_")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "_"))) (str.to_re "\u{a}")))))
; \u{2F}ezsb\s+hirmvtg\u{2f}ggqh\.kqh\dRemotetoolsbar\u{2E}kuaiso\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "/ezsb") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "hirmvtg/ggqh.kqh\u{1b}") (re.range "0" "9") (str.to_re "Remotetoolsbar.kuaiso.com\u{a}")))))
(check-sat)
