(declare-const X String)
; /filename=[^\n]*\u{2e}pub/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".pub/i\u{a}"))))
; /setInterval\s*\u{28}[^\u{29}]+\u{2e}focus\u{28}\u{29}/smi
(assert (not (str.in_re X (re.++ (str.to_re "/setInterval") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "(") (re.+ (re.comp (str.to_re ")"))) (str.to_re ".focus()/smi\u{a}")))))
; Apofis.*Port\u{2E}\s+\u{2F}NFO\u{2C}Registered
(assert (not (str.in_re X (re.++ (str.to_re "Apofis") (re.* re.allchar) (str.to_re "Port.") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/NFO,Registered\u{a}")))))
; (((^[>]?1.0)(\d)?(\d)?)|(^[<]?1.0(([1-9])|(\d[1-9])|([1-9]\d)))|(^[<]?1.4(0)?(0)?)|(^[<>]?1.(([123])(\d)?(\d)?)))$
(assert (str.in_re X (re.++ (re.union (re.++ (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (re.opt (str.to_re ">")) (str.to_re "1") re.allchar (str.to_re "0")) (re.++ (re.opt (str.to_re "<")) (str.to_re "1") re.allchar (str.to_re "0") (re.union (re.range "1" "9") (re.++ (re.range "0" "9") (re.range "1" "9")) (re.++ (re.range "1" "9") (re.range "0" "9")))) (re.++ (re.opt (str.to_re "<")) (str.to_re "1") re.allchar (str.to_re "4") (re.opt (str.to_re "0")) (re.opt (str.to_re "0"))) (re.++ (re.opt (re.union (str.to_re "<") (str.to_re ">"))) (str.to_re "1") re.allchar (re.union (str.to_re "1") (str.to_re "2") (str.to_re "3")) (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")))) (str.to_re "\u{a}"))))
; /^exec\u{7c}\d+\u{7c}\d+\u{7C}[a-z0-9]+\u{2E}[a-z]{2,3}\u{7C}[a-z0-9]+\u{7C}/
(assert (str.in_re X (re.++ (str.to_re "/exec|") (re.+ (re.range "0" "9")) (str.to_re "|") (re.+ (re.range "0" "9")) (str.to_re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re ".") ((_ re.loop 2 3) (re.range "a" "z")) (str.to_re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re "|/\u{a}"))))
(check-sat)
