(declare-const X String)
; ^(\d{1,})$|^(\d{1,}\.)$|^(\d{0,}?\.\d{1,})$|^([+-]\d{1,}(\.)?)$|^([+-](\d{1,})?\.\d{1,})$
(assert (str.in.re X (re.union (re.+ (re.range "0" "9")) (re.++ (re.+ (re.range "0" "9")) (str.to.re ".")) (re.++ (re.* (re.range "0" "9")) (str.to.re ".") (re.+ (re.range "0" "9"))) (re.++ (re.union (str.to.re "+") (str.to.re "-")) (re.+ (re.range "0" "9")) (re.opt (str.to.re "."))) (re.++ (str.to.re "\x0a") (re.union (str.to.re "+") (str.to.re "-")) (re.opt (re.+ (re.range "0" "9"))) (str.to.re ".") (re.+ (re.range "0" "9"))))))
; \x28\x29\s+WatchDog\sNetspy\d+pjpoptwql\x2frlnjX-Mailer\x3aHost\x3asnprtz\x7Cdialnoref\x3D\x25user\x5Fid
(assert (str.in.re X (re.++ (str.to.re "()") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "WatchDog") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Netspy") (re.+ (re.range "0" "9")) (str.to.re "pjpoptwql/rlnjX-Mailer:\x13Host:snprtz|dialnoref=%user_id\x0a"))))
; ^([A-Za-z]{5})([0-9]{4})([A-Za-z]{1})$
(assert (str.in.re X (re.++ ((_ re.loop 5 5) (re.union (re.range "A" "Z") (re.range "a" "z"))) ((_ re.loop 4 4) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (re.range "A" "Z") (re.range "a" "z"))) (str.to.re "\x0a"))))
; ^[-]?\d*(\.\d*)$
(assert (str.in.re X (re.++ (re.opt (str.to.re "-")) (re.* (re.range "0" "9")) (str.to.re "\x0a.") (re.* (re.range "0" "9")))))
; /\x2emsi([\?\x5c\x2f]|$)/miU
(assert (not (str.in.re X (re.++ (str.to.re "/.msi") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/miU\x0a")))))
(check-sat)
