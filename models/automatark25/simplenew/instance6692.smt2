(declare-const X String)
; Norton customer service is a type of method used to care your personal or business computer system from any virus or spyware.
(assert (str.in.re X (re.++ (str.to.re "Norton customer service is a type of method used to care your personal or business computer system from any virus or spyware") re.allchar (str.to.re "\x0a"))))
(check-sat)
