(declare-const X String)
; myInstance\.myMethod(.*)\(.*myParam.*\)
(assert (str.in.re X (re.++ (str.to.re "myInstance.myMethod") (re.* re.allchar) (str.to.re "(") (re.* re.allchar) (str.to.re "myParam") (re.* re.allchar) (str.to.re ")\x0a"))))
; Norton customer service is a type of method used to care your personal or business computer system from any virus or spyware.
(assert (str.in.re X (re.++ (str.to.re "Norton customer service is a type of method used to care your personal or business computer system from any virus or spyware") re.allchar (str.to.re "\x0a"))))
; RootviewNetControl\x2EServerdata2\.activshopper\.com
(assert (not (str.in.re X (str.to.re "RootviewNetControl.Server\x13data2.activshopper.com\x0a"))))
; /(\x13\x00|\x00\x5C)\x00m\x00q\x00r\x00t\x00\.\x00d\x00l\x00l\x00\x00\x00/i
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "\x13\x00") (str.to.re "\x00\x5c")) (str.to.re "\x00m\x00q\x00r\x00t\x00.\x00d\x00l\x00l\x00\x00\x00/i\x0a")))))
; are\d+X-Mailer\x3a+\d+v=User-Agent\x3a
(assert (str.in.re X (re.++ (str.to.re "are") (re.+ (re.range "0" "9")) (str.to.re "X-Mailer") (re.+ (str.to.re ":")) (re.+ (re.range "0" "9")) (str.to.re "v=User-Agent:\x0a"))))
(check-sat)
