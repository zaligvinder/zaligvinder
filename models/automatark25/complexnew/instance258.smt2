(declare-const X String)
; /window\x2elocation\s*=\s*unescape\s*\x28\s*["']\x25[^"']*https?\x3a/
(assert (not (str.in.re X (re.++ (str.to.re "/window.location") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "=") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "unescape") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "(") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (str.to.re "\x22") (str.to.re "'")) (str.to.re "%") (re.* (re.union (str.to.re "\x22") (str.to.re "'"))) (str.to.re "http") (re.opt (str.to.re "s")) (str.to.re ":/\x0a")))))
; CodeguruBrowserMyPostStableWeb-MailUser-Agent\x3A195\.225\.
(assert (str.in.re X (str.to.re "CodeguruBrowserMyPostStableWeb-MailUser-Agent:195.225.\x0a")))
; Host\x3a[^\n\r]*pgwtjgxwthx\x2fbyb\.xky[^\n\r]*source%3Dultrasearch136%26campaign%3Dsnap
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "pgwtjgxwthx/byb.xky") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "source%3Dultrasearch136%26campaign%3Dsnap\x0a")))))
; Host\x3A\s+Online100013Agentsvr\x5E\x5EMerlin
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Online100013Agentsvr^^Merlin\x13\x0a")))))
; Login\sHost\x3A\w+Host\x3aiz=iMeshBar%3f\x2Fbar_pl\x2Fchk_bar\.fcgi
(assert (str.in.re X (re.++ (str.to.re "Login") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Host:iz=iMeshBar%3f/bar_pl/chk_bar.fcgi\x0a"))))
(check-sat)
