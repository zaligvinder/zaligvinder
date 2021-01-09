(declare-const X String)
; /filename=[^\n]*\x2evisprj/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".visprj/i\x0a")))))
; ^[0-9](\.[0-9]+)?$
(assert (not (str.in.re X (re.++ (re.range "0" "9") (re.opt (re.++ (str.to.re ".") (re.+ (re.range "0" "9")))) (str.to.re "\x0a")))))
; /filename=[\x22\x27]?[^\n]*\x2epif[\x22\x27\s]/si
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.opt (re.union (str.to.re "\x22") (str.to.re "'"))) (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".pif") (re.union (str.to.re "\x22") (str.to.re "'") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "/si\x0a")))))
; Port.*Pro.*www\x2eproventactics\x2ecomwv=update\.cgidrivesDays
(assert (str.in.re X (re.++ (str.to.re "Port") (re.* re.allchar) (str.to.re "Pro") (re.* re.allchar) (str.to.re "www.proventactics.comwv=update.cgidrivesDays\x0a"))))
; .*[Oo0][Ee][Mm].*
(assert (str.in.re X (re.++ (re.* re.allchar) (re.union (str.to.re "O") (str.to.re "o") (str.to.re "0")) (re.union (str.to.re "E") (str.to.re "e")) (re.union (str.to.re "M") (str.to.re "m")) (re.* re.allchar) (str.to.re "\x0a"))))
(check-sat)
