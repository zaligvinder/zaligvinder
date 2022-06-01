(declare-const X String)
; HXDownload\s+Host\u{3A}ArcadeHourspjpoptwql\u{2f}rlnjFrom\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "HXDownload") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:ArcadeHourspjpoptwql/rlnjFrom:\u{a}")))))
; <[iI][fF][rR][aA][mM][eE]([^>]*[^/>]*[/>]*[>])
(assert (str.in_re X (re.++ (str.to_re "<") (re.union (str.to_re "i") (str.to_re "I")) (re.union (str.to_re "f") (str.to_re "F")) (re.union (str.to_re "r") (str.to_re "R")) (re.union (str.to_re "a") (str.to_re "A")) (re.union (str.to_re "m") (str.to_re "M")) (re.union (str.to_re "e") (str.to_re "E")) (str.to_re "\u{a}") (re.* (re.comp (str.to_re ">"))) (re.* (re.union (str.to_re "/") (str.to_re ">"))) (re.* (re.union (str.to_re "/") (str.to_re ">"))) (str.to_re ">"))))
; Hello\u{2E}\s+ovplrichfind\u{2E}comCookie\u{3a}
(assert (not (str.in_re X (re.++ (str.to_re "Hello.") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ovplrichfind.comCookie:\u{a}")))))
; /[a-zA-Z]/
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to_re "/\u{a}")))))
(check-sat)
