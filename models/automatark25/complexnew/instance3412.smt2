(declare-const X String)
; /filename=[^\n]*\u{2e}pkp/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".pkp/i\u{a}"))))
; ^A-?|[BCD][+-]?|[SN]?F|W$
(assert (not (str.in_re X (re.union (re.++ (str.to_re "A") (re.opt (str.to_re "-"))) (re.++ (re.union (str.to_re "B") (str.to_re "C") (str.to_re "D")) (re.opt (re.union (str.to_re "+") (str.to_re "-")))) (re.++ (re.opt (re.union (str.to_re "S") (str.to_re "N"))) (str.to_re "F")) (str.to_re "W\u{a}")))))
; /(DisableSandboxAndDrop|ConfusedClass|FieldAccessVerifierExpl)\.class/ims
(assert (str.in_re X (re.++ (str.to_re "/") (re.union (str.to_re "DisableSandboxAndDrop") (str.to_re "ConfusedClass") (str.to_re "FieldAccessVerifierExpl")) (str.to_re ".class/ims\u{a}"))))
; /filename=[^\n]*\u{2e}smi/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".smi/i\u{a}"))))
(check-sat)
