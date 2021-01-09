(declare-const X String)
; Toolbar\s+pjpoptwql\x2frlnjSubject\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Toolbar") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "pjpoptwql/rlnjSubject:\x0a")))))
; /STOR fp[0-9A-F]{44}\x2ebin/
(assert (str.in.re X (re.++ (str.to.re "/STOR fp") ((_ re.loop 44 44) (re.union (re.range "0" "9") (re.range "A" "F"))) (str.to.re ".bin/\x0a"))))
; Login\d+dll\x3FHOST\x3Acontains
(assert (not (str.in.re X (re.++ (str.to.re "Login") (re.+ (re.range "0" "9")) (str.to.re "dll?HOST:contains\x0a")))))
(check-sat)
