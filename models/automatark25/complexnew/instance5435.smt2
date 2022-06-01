(declare-const X String)
; (\[url=?"?)([^\]"]*)("?\])([^\[]*)(\[/url\])
(assert (not (str.in_re X (re.++ (re.* (re.union (str.to_re "]") (str.to_re "\u{22}"))) (re.* (re.comp (str.to_re "["))) (str.to_re "[/url]\u{a}[url") (re.opt (str.to_re "=")) (re.opt (str.to_re "\u{22}")) (re.opt (str.to_re "\u{22}")) (str.to_re "]")))))
; /^\/blog\/[a-zA-Z0-9]{3}\.(g(3|e)d|mm|vru|be|nut)$/U
(assert (not (str.in_re X (re.++ (str.to_re "//blog/") ((_ re.loop 3 3) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re ".") (re.union (re.++ (str.to_re "g") (re.union (str.to_re "3") (str.to_re "e")) (str.to_re "d")) (str.to_re "mm") (str.to_re "vru") (str.to_re "be") (str.to_re "nut")) (str.to_re "/U\u{a}")))))
; is\u{7D}\u{7B}Port\u{3A}\u{7D}\u{7B}User\u{3A}
(assert (str.in_re X (str.to_re "is}{Port:}{User:\u{a}")))
; ^\d{0,2}(\.\d{1,2})?$
(assert (not (str.in_re X (re.++ ((_ re.loop 0 2) (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (str.to_re "\u{a}")))))
(check-sat)
