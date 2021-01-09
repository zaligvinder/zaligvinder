(declare-const X String)
; .*(\.[Jj][Pp][Gg]|\.[Gg][Ii][Ff]|\.[Jj][Pp][Ee][Gg]|\.[Pp][Nn][Gg])
(assert (str.in.re X (re.++ (re.* re.allchar) (str.to.re "\x0a.") (re.union (re.++ (re.union (str.to.re "J") (str.to.re "j")) (re.union (str.to.re "P") (str.to.re "p")) (re.union (str.to.re "G") (str.to.re "g"))) (re.++ (re.union (str.to.re "G") (str.to.re "g")) (re.union (str.to.re "I") (str.to.re "i")) (re.union (str.to.re "F") (str.to.re "f"))) (re.++ (re.union (str.to.re "J") (str.to.re "j")) (re.union (str.to.re "P") (str.to.re "p")) (re.union (str.to.re "E") (str.to.re "e")) (re.union (str.to.re "G") (str.to.re "g"))) (re.++ (re.union (str.to.re "P") (str.to.re "p")) (re.union (str.to.re "N") (str.to.re "n")) (re.union (str.to.re "G") (str.to.re "g")))))))
(check-sat)
