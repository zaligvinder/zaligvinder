(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (= x "PP__XXyy**!!rrDD11aaaavvZZ[[<<{{ppggXXjj44NNuu''\\\\nn''VV||DD88,,ZZ``JJjj55,,aaCCjjnnWWgg++rree))hh,,zzbb>>))QQ66CCuuIIiiLLGG''\\\\rr''00aaaagg00bb__zz))llOO00ooff''\\\\xx00cc''YY''\\\\xx00bb''oo~~aaaaaa"))
(assert (str.in.re x (re.* (str.to.re "]]ss>>99,,IIRRhh;;''\\\\xx00bb''>>EE??22''\\\\xx00cc''++tthh<<dd"))))
(check-sat)
