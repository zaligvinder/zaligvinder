(declare-const X String)
; InformationSubject\x3ASpynovabyBlacksnprtz\x7CdialnoSearch
(assert (str.in.re X (str.to.re "InformationSubject:SpynovabyBlacksnprtz|dialnoSearch\x0a")))
; \x22The\s+e2give\.com\s+NETObserve
(assert (not (str.in.re X (re.++ (str.to.re "\x22The") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "e2give.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "NETObserve\x0a")))))
; /filename=[^\n]*\x2ewps/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".wps/i\x0a"))))
; ^[-+]?[0-9]\d{0,2}(\.\d{1,2})?%?$
(assert (not (str.in.re X (re.++ (re.opt (re.union (str.to.re "-") (str.to.re "+"))) (re.range "0" "9") ((_ re.loop 0 2) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (re.opt (str.to.re "%")) (str.to.re "\x0a")))))
; (([01][\.\- +]\(\d{3}\)[\.\- +]?)|([01][\.\- +]\d{3}[\.\- +])|(\(\d{3}\) ?)|(\d{3}[- \.]))?\d{3}[- \.]\d{4}
(assert (not (str.in.re X (re.++ (re.opt (re.union (re.++ (re.union (str.to.re "0") (str.to.re "1")) (re.union (str.to.re ".") (str.to.re "-") (str.to.re " ") (str.to.re "+")) (str.to.re "(") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ")") (re.opt (re.union (str.to.re ".") (str.to.re "-") (str.to.re " ") (str.to.re "+")))) (re.++ (re.union (str.to.re "0") (str.to.re "1")) (re.union (str.to.re ".") (str.to.re "-") (str.to.re " ") (str.to.re "+")) ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to.re ".") (str.to.re "-") (str.to.re " ") (str.to.re "+"))) (re.++ (str.to.re "(") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ")") (re.opt (str.to.re " "))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to.re "-") (str.to.re " ") (str.to.re "."))))) ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to.re "-") (str.to.re " ") (str.to.re ".")) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
