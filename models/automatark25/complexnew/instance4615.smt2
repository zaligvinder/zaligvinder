(declare-const X String)
; /\x2ecpe([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.cpe") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; ^L[a-zA-Z0-9]{26,33}$
(assert (str.in.re X (re.++ (str.to.re "L") ((_ re.loop 26 33) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "\x0a"))))
; .*(\.[Jj][Pp][Gg]|\.[Gg][Ii][Ff]|\.[Jj][Pp][Ee][Gg]|\.[Pp][Nn][Gg])
(assert (not (str.in.re X (re.++ (re.* re.allchar) (str.to.re "\x0a.") (re.union (re.++ (re.union (str.to.re "J") (str.to.re "j")) (re.union (str.to.re "P") (str.to.re "p")) (re.union (str.to.re "G") (str.to.re "g"))) (re.++ (re.union (str.to.re "G") (str.to.re "g")) (re.union (str.to.re "I") (str.to.re "i")) (re.union (str.to.re "F") (str.to.re "f"))) (re.++ (re.union (str.to.re "J") (str.to.re "j")) (re.union (str.to.re "P") (str.to.re "p")) (re.union (str.to.re "E") (str.to.re "e")) (re.union (str.to.re "G") (str.to.re "g"))) (re.++ (re.union (str.to.re "P") (str.to.re "p")) (re.union (str.to.re "N") (str.to.re "n")) (re.union (str.to.re "G") (str.to.re "g"))))))))
(check-sat)
