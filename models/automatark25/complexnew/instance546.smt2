(declare-const X String)
; ^([A-Z0-9?.+-])+([,]([A-Z0-9?.+-])+)*$
(assert (str.in_re X (re.++ (re.+ (re.union (re.range "A" "Z") (re.range "0" "9") (str.to_re "?") (str.to_re ".") (str.to_re "+") (str.to_re "-"))) (re.* (re.++ (str.to_re ",") (re.+ (re.union (re.range "A" "Z") (re.range "0" "9") (str.to_re "?") (str.to_re ".") (str.to_re "+") (str.to_re "-"))))) (str.to_re "\u{a}"))))
; (([\n,  ])*((<+)([^<>]+)(>*))+([\n,  ])*)+
(assert (str.in_re X (re.++ (re.+ (re.++ (re.* (re.union (str.to_re "\u{a}") (str.to_re ",") (str.to_re " "))) (re.+ (re.++ (re.+ (str.to_re "<")) (re.+ (re.union (str.to_re "<") (str.to_re ">"))) (re.* (str.to_re ">")))) (re.* (re.union (str.to_re "\u{a}") (str.to_re ",") (str.to_re " "))))) (str.to_re "\u{a}"))))
; Host\u{3A}\s+User-Agent\u{3A}
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:\u{a}"))))
; /^(Frame)?\.jsf/R
(assert (str.in_re X (re.++ (str.to_re "/") (re.opt (str.to_re "Frame")) (str.to_re ".jsf/R\u{a}"))))
; ^(BG){0,1}([0-9]{9}|[0-9]{10})$
(assert (str.in_re X (re.++ (re.opt (str.to_re "BG")) (re.union ((_ re.loop 9 9) (re.range "0" "9")) ((_ re.loop 10 10) (re.range "0" "9"))) (str.to_re "\u{a}"))))
(check-sat)
