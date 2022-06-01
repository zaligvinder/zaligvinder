(declare-const X String)
; update\.cgi\s+wwwProbnymomspyo\u{2f}zowy
(assert (str.in_re X (re.++ (str.to_re "update.cgi") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "wwwProbnymomspyo/zowy\u{a}"))))
; ^(\d){7,8}$
(assert (str.in_re X (re.++ ((_ re.loop 7 8) (re.range "0" "9")) (str.to_re "\u{a}"))))
; /^("(\\"|[^"])*"|'(\\'|[^'])*'|[^\n])*(\n|$)/gm
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.* (re.union (re.++ (str.to_re "\u{22}") (re.* (re.union (str.to_re "\u{5c}\u{22}") (re.comp (str.to_re "\u{22}")))) (str.to_re "\u{22}")) (re.++ (str.to_re "'") (re.* (re.union (str.to_re "\u{5c}'") (re.comp (str.to_re "'")))) (str.to_re "'")) (re.comp (str.to_re "\u{a}")))) (str.to_re "\u{a}/gm\u{a}")))))
; [DJF]{1}[0-9]{5,8}
(assert (not (str.in_re X (re.++ ((_ re.loop 1 1) (re.union (str.to_re "D") (str.to_re "J") (str.to_re "F"))) ((_ re.loop 5 8) (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)
