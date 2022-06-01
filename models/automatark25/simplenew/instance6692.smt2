(declare-const X String)
; Norton customer service is a type of method used to care your personal or business computer system from any virus or spyware.
(assert (str.in_re X (re.++ (str.to_re "Norton customer service is a type of method used to care your personal or business computer system from any virus or spyware") re.allchar (str.to_re "\u{a}"))))
(check-sat)
