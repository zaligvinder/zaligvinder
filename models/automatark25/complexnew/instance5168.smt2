(declare-const X String)
; MyHost\x3AtoHost\x3AWinSessionwww\x2eurlblaze\x2enetResultHost\x3A
(assert (str.in.re X (str.to.re "MyHost:toHost:WinSessionwww.urlblaze.netResultHost:\x0a")))
; \/cgi-bin\/PopupVHost\x3Apiolet\x0D\x0A\x0D\x0AAttached
(assert (not (str.in.re X (str.to.re "/cgi-bin/PopupVHost:piolet\x0d\x0a\x0d\x0aAttached\x0a"))))
; Toolbar\s+pjpoptwql\x2frlnjSubject\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Toolbar") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "pjpoptwql/rlnjSubject:\x0a")))))
; ^((\d{5}-?\d{4})|(\d{5})|([A-Za-z]\d[A-Za-z]\s?\d[A-Za-z]\d))$
(assert (not (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.opt (str.to.re "-")) ((_ re.loop 4 4) (re.range "0" "9"))) ((_ re.loop 5 5) (re.range "0" "9")) (re.++ (re.union (re.range "A" "Z") (re.range "a" "z")) (re.range "0" "9") (re.union (re.range "A" "Z") (re.range "a" "z")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.range "0" "9") (re.union (re.range "A" "Z") (re.range "a" "z")) (re.range "0" "9"))) (str.to.re "\x0a")))))
; (([01][\.\- +]\(\d{3}\)[\.\- +]?)|([01][\.\- +]\d{3}[\.\- +])|(\(\d{3}\) ?)|(\d{3}[- \.]))?\d{3}[- \.]\d{4}
(assert (not (str.in.re X (re.++ (re.opt (re.union (re.++ (re.union (str.to.re "0") (str.to.re "1")) (re.union (str.to.re ".") (str.to.re "-") (str.to.re " ") (str.to.re "+")) (str.to.re "(") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ")") (re.opt (re.union (str.to.re ".") (str.to.re "-") (str.to.re " ") (str.to.re "+")))) (re.++ (re.union (str.to.re "0") (str.to.re "1")) (re.union (str.to.re ".") (str.to.re "-") (str.to.re " ") (str.to.re "+")) ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to.re ".") (str.to.re "-") (str.to.re " ") (str.to.re "+"))) (re.++ (str.to.re "(") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ")") (re.opt (str.to.re " "))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to.re "-") (str.to.re " ") (str.to.re "."))))) ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to.re "-") (str.to.re " ") (str.to.re ".")) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
