(declare-const X String)
; ^([1-9][0-9]?|100)%$
(assert (str.in_re X (re.++ (re.union (re.++ (re.range "1" "9") (re.opt (re.range "0" "9"))) (str.to_re "100")) (str.to_re "%\u{a}"))))
; Version\s+User-Agent\u{3A}bindmqnqgijmng\u{2f}oj
(assert (str.in_re X (re.++ (str.to_re "Version") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:bindmqnqgijmng/oj\u{a}"))))
; .*(\.[Jj][Pp][Gg]|\.[Gg][Ii][Ff]|\.[Jj][Pp][Ee][Gg]|\.[Pp][Nn][Gg])
(assert (not (str.in_re X (re.++ (re.* re.allchar) (str.to_re "\u{a}.") (re.union (re.++ (re.union (str.to_re "J") (str.to_re "j")) (re.union (str.to_re "P") (str.to_re "p")) (re.union (str.to_re "G") (str.to_re "g"))) (re.++ (re.union (str.to_re "G") (str.to_re "g")) (re.union (str.to_re "I") (str.to_re "i")) (re.union (str.to_re "F") (str.to_re "f"))) (re.++ (re.union (str.to_re "J") (str.to_re "j")) (re.union (str.to_re "P") (str.to_re "p")) (re.union (str.to_re "E") (str.to_re "e")) (re.union (str.to_re "G") (str.to_re "g"))) (re.++ (re.union (str.to_re "P") (str.to_re "p")) (re.union (str.to_re "N") (str.to_re "n")) (re.union (str.to_re "G") (str.to_re "g"))))))))
; Host\u{3A}.*Toolbar\s+Host\u{3A}
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.* re.allchar) (str.to_re "Toolbar") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:\u{a}"))))
; /filename=[^\n]*\u{2e}sami/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".sami/i\u{a}"))))
(check-sat)
