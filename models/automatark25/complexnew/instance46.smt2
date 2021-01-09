(declare-const X String)
; /\x2ef4v([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.f4v") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; /Referer\x3a[^\n]*fla\.php\?wq=[a-f0-9]+\x0d\x0a/H
(assert (not (str.in.re X (re.++ (str.to.re "/Referer:") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re "fla.php?wq=") (re.+ (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "\x0d\x0a/H\x0a")))))
; www\.iggsey\.com\sX-Mailer\x3aComputeron\x3Acom\x3E2\x2E41
(assert (str.in.re X (re.++ (str.to.re "www.iggsey.com") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "X-Mailer:\x13Computeron:com>2.41\x0a"))))
(check-sat)
