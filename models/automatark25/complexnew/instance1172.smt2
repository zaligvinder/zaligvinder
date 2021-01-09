(declare-const X String)
; \x28\x29\s+WatchDog\sNetspy\d+pjpoptwql\x2frlnjX-Mailer\x3aHost\x3asnprtz\x7Cdialnoref\x3D\x25user\x5Fid
(assert (str.in.re X (re.++ (str.to.re "()") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "WatchDog") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Netspy") (re.+ (re.range "0" "9")) (str.to.re "pjpoptwql/rlnjX-Mailer:\x13Host:snprtz|dialnoref=%user_id\x0a"))))
; Host\x3A\dtoolbar\x2Ehotblox\x2Ecom\dHost\x3Ahttp\x3A\x2F\x2Fmysearch\.dropspam\.com\x2Findex\.php\?tpid=
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.range "0" "9") (str.to.re "toolbar.hotblox.com") (re.range "0" "9") (str.to.re "Host:http://mysearch.dropspam.com/index.php?tpid=\x13\x0a")))))
(check-sat)
