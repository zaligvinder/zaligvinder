(declare-const X String)
; SI\|Server\|\s+OSSProxy\x5Chome\/lordofsearch%3fAuthorization\x3a
(assert (str.in.re X (re.++ (str.to.re "SI|Server|\x13") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "OSSProxy\x5chome/lordofsearch%3fAuthorization:\x0a"))))
; www\s+X-Mailer\x3aSpyBuddyUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "www") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "X-Mailer:\x13SpyBuddyUser-Agent:\x0a"))))
; /\/SUS\d+O\d+\.jsp\?[a-z0-9=\x2b\x2f]{20}/iU
(assert (str.in.re X (re.++ (str.to.re "//SUS") (re.+ (re.range "0" "9")) (str.to.re "O") (re.+ (re.range "0" "9")) (str.to.re ".jsp?") ((_ re.loop 20 20) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "=") (str.to.re "+") (str.to.re "/"))) (str.to.re "/iU\x0a"))))
; /\.addAnnot\s*\x28[^\x29]*?points\s*\x3a\s*0/i
(assert (not (str.in.re X (re.++ (str.to.re "/.addAnnot") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "(") (re.* (re.comp (str.to.re ")"))) (str.to.re "points") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re ":") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "0/i\x0a")))))
; /\xb6\xb6\xff\xff\xff\xff$/
(assert (not (str.in.re X (str.to.re "/\xb6\xb6\xff\xff\xff\xff/\x0a"))))
(check-sat)
