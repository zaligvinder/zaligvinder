(declare-const X String)
; ^([A-Z0-9?.+-])+([,]([A-Z0-9?.+-])+)*$
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "A" "Z") (re.range "0" "9") (str.to.re "?") (str.to.re ".") (str.to.re "+") (str.to.re "-"))) (re.* (re.++ (str.to.re ",") (re.+ (re.union (re.range "A" "Z") (re.range "0" "9") (str.to.re "?") (str.to.re ".") (str.to.re "+") (str.to.re "-"))))) (str.to.re "\x0a"))))
; (([\n,  ])*((<+)([^<>]+)(>*))+([\n,  ])*)+
(assert (str.in.re X (re.++ (re.+ (re.++ (re.* (re.union (str.to.re "\x0a") (str.to.re ",") (str.to.re " "))) (re.+ (re.++ (re.+ (str.to.re "<")) (re.+ (re.union (str.to.re "<") (str.to.re ">"))) (re.* (str.to.re ">")))) (re.* (re.union (str.to.re "\x0a") (str.to.re ",") (str.to.re " "))))) (str.to.re "\x0a"))))
; Host\x3A\s+User-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:\x0a"))))
; /^(Frame)?\.jsf/R
(assert (str.in.re X (re.++ (str.to.re "/") (re.opt (str.to.re "Frame")) (str.to.re ".jsf/R\x0a"))))
; ^(BG){0,1}([0-9]{9}|[0-9]{10})$
(assert (str.in.re X (re.++ (re.opt (str.to.re "BG")) (re.union ((_ re.loop 9 9) (re.range "0" "9")) ((_ re.loop 10 10) (re.range "0" "9"))) (str.to.re "\x0a"))))
(check-sat)
