(declare-const X String)
; myInstance\.myMethod(.*)\(.*myParam.*\)
(assert (str.in_re X (re.++ (str.to_re "myInstance.myMethod") (re.* re.allchar) (str.to_re "(") (re.* re.allchar) (str.to_re "myParam") (re.* re.allchar) (str.to_re ")\u{a}"))))
; Norton customer service is a type of method used to care your personal or business computer system from any virus or spyware.
(assert (str.in_re X (re.++ (str.to_re "Norton customer service is a type of method used to care your personal or business computer system from any virus or spyware") re.allchar (str.to_re "\u{a}"))))
; RootviewNetControl\u{2E}Serverdata2\.activshopper\.com
(assert (not (str.in_re X (str.to_re "RootviewNetControl.Server\u{13}data2.activshopper.com\u{a}"))))
; /(\u{13}\u{0}|\u{0}\u{5C})\u{0}m\u{0}q\u{0}r\u{0}t\u{0}\.\u{0}d\u{0}l\u{0}l\u{0}\u{0}\u{0}/i
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.union (str.to_re "\u{13}\u{0}") (str.to_re "\u{0}\u{5c}")) (str.to_re "\u{0}m\u{0}q\u{0}r\u{0}t\u{0}.\u{0}d\u{0}l\u{0}l\u{0}\u{0}\u{0}/i\u{a}")))))
; are\d+X-Mailer\u{3a}+\d+v=User-Agent\u{3a}
(assert (str.in_re X (re.++ (str.to_re "are") (re.+ (re.range "0" "9")) (str.to_re "X-Mailer") (re.+ (str.to_re ":")) (re.+ (re.range "0" "9")) (str.to_re "v=User-Agent:\u{a}"))))
(check-sat)
