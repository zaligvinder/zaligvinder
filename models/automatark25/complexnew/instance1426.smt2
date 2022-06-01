(declare-const X String)
; /\u{2e}xbm([\?\u{5c}\u{2f}]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.xbm") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; DISK\s+c\.goclick\.com\w+asdbiz\u{2E}bizfrom\u{7c}roogoo\u{7c}CurrentiOpusetbuviaebe\u{2f}eqv\.bvvpjpoptwql\u{2f}rlnj
(assert (not (str.in_re X (re.++ (str.to_re "DISK") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "c.goclick.com") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "asdbiz.bizfrom|roogoo|CurrentiOpusetbuviaebe/eqv.bvvpjpoptwql/rlnj\u{a}")))))
(check-sat)
