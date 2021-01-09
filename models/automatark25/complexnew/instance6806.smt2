(declare-const X String)
; /\x2eexe([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.exe") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; ^1?[1-9]$|^[1-2]0$
(assert (not (str.in.re X (re.union (re.++ (re.opt (str.to.re "1")) (re.range "1" "9")) (re.++ (re.range "1" "2") (str.to.re "0\x0a"))))))
; actualnames\.comclient\x2Ebaigoo\x2Ecomzzzvmkituktgr\x2fetiexpsp2-InformationHost\x3A
(assert (not (str.in.re X (str.to.re "actualnames.comclient.baigoo.comzzzvmkituktgr/etiexpsp2-InformationHost:\x0a"))))
(check-sat)
