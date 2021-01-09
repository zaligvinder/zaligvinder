(declare-const X String)
; ([^\.\?\!]*)[\.\?\!]
(assert (str.in.re X (re.++ (re.* (re.union (str.to.re ".") (str.to.re "?") (str.to.re "!"))) (re.union (str.to.re ".") (str.to.re "?") (str.to.re "!")) (str.to.re "\x0a"))))
; ^([0]{0,1}[0-7]{3})$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.opt (str.to.re "0")) ((_ re.loop 3 3) (re.range "0" "7"))))))
; /\x2expm([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.xpm") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; /^Host:\s*?[a-f0-9]{63,64}\./Him
(assert (not (str.in.re X (re.++ (str.to.re "/Host:") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 63 64) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "./Him\x0a")))))
(check-sat)
