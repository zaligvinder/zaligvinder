(declare-const X String)
; ^([1-9][0-9]?|100)%$
(assert (str.in.re X (re.++ (re.union (re.++ (re.range "1" "9") (re.opt (re.range "0" "9"))) (str.to.re "100")) (str.to.re "%\x0a"))))
; Version\s+User-Agent\x3Abindmqnqgijmng\x2foj
(assert (str.in.re X (re.++ (str.to.re "Version") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:bindmqnqgijmng/oj\x0a"))))
; .*(\.[Jj][Pp][Gg]|\.[Gg][Ii][Ff]|\.[Jj][Pp][Ee][Gg]|\.[Pp][Nn][Gg])
(assert (not (str.in.re X (re.++ (re.* re.allchar) (str.to.re "\x0a.") (re.union (re.++ (re.union (str.to.re "J") (str.to.re "j")) (re.union (str.to.re "P") (str.to.re "p")) (re.union (str.to.re "G") (str.to.re "g"))) (re.++ (re.union (str.to.re "G") (str.to.re "g")) (re.union (str.to.re "I") (str.to.re "i")) (re.union (str.to.re "F") (str.to.re "f"))) (re.++ (re.union (str.to.re "J") (str.to.re "j")) (re.union (str.to.re "P") (str.to.re "p")) (re.union (str.to.re "E") (str.to.re "e")) (re.union (str.to.re "G") (str.to.re "g"))) (re.++ (re.union (str.to.re "P") (str.to.re "p")) (re.union (str.to.re "N") (str.to.re "n")) (re.union (str.to.re "G") (str.to.re "g"))))))))
; Host\x3A.*Toolbar\s+Host\x3A
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.* re.allchar) (str.to.re "Toolbar") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:\x0a"))))
; /filename=[^\n]*\x2esami/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".sami/i\x0a"))))
(check-sat)
