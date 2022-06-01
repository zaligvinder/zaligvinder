(declare-const X String)
; /^\/\u{3f}[1-9][A-Za-z0-9~_-]{240}/Ui
(assert (not (str.in_re X (re.++ (str.to_re "//?") (re.range "1" "9") ((_ re.loop 240 240) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to_re "~") (str.to_re "_") (str.to_re "-"))) (str.to_re "/Ui\u{a}")))))
; ^(([0-9]{2})|([a-zA-Z][0-9])|([a-zA-Z]{2}))[0-9]{6}$
(assert (not (str.in_re X (re.++ (re.union ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.range "0" "9")) ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z")))) ((_ re.loop 6 6) (re.range "0" "9")) (str.to_re "\u{a}")))))
; http[s]?://[a-zA-Z0-9.-/]+
(assert (not (str.in_re X (re.++ (str.to_re "http") (re.opt (str.to_re "s")) (str.to_re "://") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (re.range "." "/"))) (str.to_re "\u{a}")))))
; ToolbarUser-Agent\u{3A}From\u{3A}
(assert (not (str.in_re X (str.to_re "ToolbarUser-Agent:From:\u{a}"))))
; /\u{2e}jfif([\?\u{5c}\u{2f}]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.jfif") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
(check-sat)
