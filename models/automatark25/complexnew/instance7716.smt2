(declare-const X String)
; /filename=[^\n]*\u{2e}visprj/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".visprj/i\u{a}")))))
; ^[0-9](\.[0-9]+)?$
(assert (not (str.in_re X (re.++ (re.range "0" "9") (re.opt (re.++ (str.to_re ".") (re.+ (re.range "0" "9")))) (str.to_re "\u{a}")))))
; /filename=[\u{22}\u{27}]?[^\n]*\u{2e}pif[\u{22}\u{27}\s]/si
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.opt (re.union (str.to_re "\u{22}") (str.to_re "'"))) (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".pif") (re.union (str.to_re "\u{22}") (str.to_re "'") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "/si\u{a}")))))
; Port.*Pro.*www\u{2e}proventactics\u{2e}comwv=update\.cgidrivesDays
(assert (str.in_re X (re.++ (str.to_re "Port") (re.* re.allchar) (str.to_re "Pro") (re.* re.allchar) (str.to_re "www.proventactics.comwv=update.cgidrivesDays\u{a}"))))
; .*[Oo0][Ee][Mm].*
(assert (str.in_re X (re.++ (re.* re.allchar) (re.union (str.to_re "O") (str.to_re "o") (str.to_re "0")) (re.union (str.to_re "E") (str.to_re "e")) (re.union (str.to_re "M") (str.to_re "m")) (re.* re.allchar) (str.to_re "\u{a}"))))
(check-sat)
