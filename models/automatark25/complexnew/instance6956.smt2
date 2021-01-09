(declare-const X String)
; .*(\.[Jj][Pp][Gg]|\.[Gg][Ii][Ff]|\.[Jj][Pp][Ee][Gg]|\.[Pp][Nn][Gg])
(assert (str.in.re X (re.++ (re.* re.allchar) (str.to.re "\x0a.") (re.union (re.++ (re.union (str.to.re "J") (str.to.re "j")) (re.union (str.to.re "P") (str.to.re "p")) (re.union (str.to.re "G") (str.to.re "g"))) (re.++ (re.union (str.to.re "G") (str.to.re "g")) (re.union (str.to.re "I") (str.to.re "i")) (re.union (str.to.re "F") (str.to.re "f"))) (re.++ (re.union (str.to.re "J") (str.to.re "j")) (re.union (str.to.re "P") (str.to.re "p")) (re.union (str.to.re "E") (str.to.re "e")) (re.union (str.to.re "G") (str.to.re "g"))) (re.++ (re.union (str.to.re "P") (str.to.re "p")) (re.union (str.to.re "N") (str.to.re "n")) (re.union (str.to.re "G") (str.to.re "g")))))))
; ^[13][a-zA-Z0-9]{26,33}$
(assert (not (str.in.re X (re.++ (re.union (str.to.re "1") (str.to.re "3")) ((_ re.loop 26 33) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "\x0a")))))
; Host\x3A\s+Online100013Agentsvr\x5E\x5EMerlin
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Online100013Agentsvr^^Merlin\x13\x0a")))))
; NetTracker\.htaServerTheef2trustyfiles\x2EcomlogsHost\x3Aversion
(assert (str.in.re X (str.to.re "NetTracker.htaServerTheef2trustyfiles.comlogsHost:version\x0a")))
(check-sat)
