(declare-const X String)
; ^([1-9]+[0-9]*|\d*[.,]\d)$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9"))) (re.++ (re.* (re.range "0" "9")) (re.union (str.to.re ".") (str.to.re ",")) (re.range "0" "9"))) (str.to.re "\x0a")))))
; Toolbar\s+pjpoptwql\x2frlnjSubject\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Toolbar") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "pjpoptwql/rlnjSubject:\x0a")))))
; \D
(assert (not (str.in.re X (re.++ (re.comp (re.range "0" "9")) (str.to.re "\x0a")))))
; forum=From\x3acomTencentTravelerBackAtTaCkExplorer
(assert (not (str.in.re X (str.to.re "forum=From:comTencentTravelerBackAtTaCkExplorer\x0a"))))
(check-sat)
