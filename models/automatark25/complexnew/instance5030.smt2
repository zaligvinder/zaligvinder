(declare-const X String)
; (Jan(uary)?|Feb(ruary)?|Mar(ch)?|Apr(il)?|May|Jun(e)?|Jul(y)?|Aug(ust)?|Sep(tember)?|Oct(ober)?|(Nov|Dec)(ember)?)
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "Jan") (re.opt (str.to.re "uary"))) (re.++ (str.to.re "Feb") (re.opt (str.to.re "ruary"))) (re.++ (str.to.re "Mar") (re.opt (str.to.re "ch"))) (re.++ (str.to.re "Apr") (re.opt (str.to.re "il"))) (str.to.re "May") (re.++ (str.to.re "Jun") (re.opt (str.to.re "e"))) (re.++ (str.to.re "Jul") (re.opt (str.to.re "y"))) (re.++ (str.to.re "Aug") (re.opt (str.to.re "ust"))) (re.++ (str.to.re "Sep") (re.opt (str.to.re "tember"))) (re.++ (str.to.re "Oct") (re.opt (str.to.re "ober"))) (re.++ (re.union (str.to.re "Nov") (str.to.re "Dec")) (re.opt (str.to.re "ember")))) (str.to.re "\x0a"))))
; /Expression\x28\s*?GetClass\x28\x22sun.awt.SunToolkit\x22\x29\s*?,\s*?\x22getField\x22/smi
(assert (not (str.in.re X (re.++ (str.to.re "/Expression(") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "GetClass(\x22sun") re.allchar (str.to.re "awt") re.allchar (str.to.re "SunToolkit\x22)") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re ",") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x22getField\x22/smi\x0a")))))
; SAccsearchresltOnline100013Agentsvr\x5E\x5EMerlin
(assert (str.in.re X (str.to.re "SAccsearchresltOnline100013Agentsvr^^Merlin\x13\x0a")))
(check-sat)
