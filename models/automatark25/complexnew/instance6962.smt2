(declare-const X String)
; User-Agent\x3A\s+Host\x3A[^\n\r]*Hourspjpoptwql\x2frlnjFrom\x3Asbver\x3aGhost
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Hourspjpoptwql/rlnjFrom:sbver:Ghost\x13\x0a"))))
; ^[1-9]{1}[0-9]{3}\s?[A-Z]{2}$
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 2 2) (re.range "A" "Z")) (str.to.re "\x0a"))))
; <textarea(.|\n)*?>((.|\n)*?)</textarea>
(assert (str.in.re X (re.++ (str.to.re "<textarea") (re.* (re.union re.allchar (str.to.re "\x0a"))) (str.to.re ">") (re.* (re.union re.allchar (str.to.re "\x0a"))) (str.to.re "</textarea>\x0a"))))
(check-sat)
