(declare-const X String)
; ^(Sun|Mon|(T(ues|hurs))|Fri)(day|\.)?$|Wed(\.|nesday)?$|Sat(\.|urday)?$|T((ue?)|(hu?r?))\.?$
(assert (not (str.in.re X (re.union (re.++ (re.union (str.to.re "Sun") (str.to.re "Mon") (re.++ (str.to.re "T") (re.union (str.to.re "ues") (str.to.re "hurs"))) (str.to.re "Fri")) (re.opt (re.union (str.to.re "day") (str.to.re ".")))) (re.++ (str.to.re "Wed") (re.opt (re.union (str.to.re ".") (str.to.re "nesday")))) (re.++ (str.to.re "Sat") (re.opt (re.union (str.to.re ".") (str.to.re "urday")))) (re.++ (str.to.re "T") (re.union (re.++ (str.to.re "u") (re.opt (str.to.re "e"))) (re.++ (str.to.re "h") (re.opt (str.to.re "u")) (re.opt (str.to.re "r")))) (re.opt (str.to.re ".")) (str.to.re "\x0a"))))))
; \x22reaction\x2Etxt\x22User-Agent\x3AnewsSpyAgentsmrtshpr-cs-
(assert (not (str.in.re X (str.to.re "\x22reaction.txt\x22User-Agent:newsSpyAgentsmrtshpr-cs-\x13\x0a"))))
; /User-Agent\x3a\x20[^\n]*?WinHttp\x2eWinHttpRequest.*?\n/H
(assert (str.in.re X (re.++ (str.to.re "/User-Agent: ") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re "WinHttp.WinHttpRequest") (re.* re.allchar) (str.to.re "\x0a/H\x0a"))))
(check-sat)
