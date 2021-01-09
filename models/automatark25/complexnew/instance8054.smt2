(declare-const X String)
; User-Agent\x3A\d+Desktop\sIDENTIFY666User-Agent\x3A\x5BStatic
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.range "0" "9")) (str.to.re "Desktop") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "IDENTIFY666User-Agent:[Static\x0a"))))
; ^(\(\d{3}\)|\d{3})[\s.-]?\d{3}[\s.-]?\d{4}$
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "(") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ")")) ((_ re.loop 3 3) (re.range "0" "9"))) (re.opt (re.union (str.to.re ".") (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re ".") (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; HANDY\s+Exploiter\w+\x2Fr\x2Fkeys\x2FkeysS\x3aUsers\x5cIterenet
(assert (not (str.in.re X (re.++ (str.to.re "HANDY") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Exploiter") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "/r/keys/keysS:Users\x5cIterenet\x0a")))))
; \x28\x29\s+WatchDog\sNetspy\d+pjpoptwql\x2frlnjX-Mailer\x3aHost\x3asnprtz\x7Cdialnoref\x3D\x25user\x5Fid
(assert (not (str.in.re X (re.++ (str.to.re "()") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "WatchDog") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Netspy") (re.+ (re.range "0" "9")) (str.to.re "pjpoptwql/rlnjX-Mailer:\x13Host:snprtz|dialnoref=%user_id\x0a")))))
(check-sat)
