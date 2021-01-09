(declare-const X String)
; /\x2exbm([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.xbm") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; DISK\s+c\.goclick\.com\w+asdbiz\x2Ebizfrom\x7croogoo\x7cCurrentiOpusetbuviaebe\x2feqv\.bvvpjpoptwql\x2frlnj
(assert (not (str.in.re X (re.++ (str.to.re "DISK") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "c.goclick.com") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "asdbiz.bizfrom|roogoo|CurrentiOpusetbuviaebe/eqv.bvvpjpoptwql/rlnj\x0a")))))
(check-sat)
