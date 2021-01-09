(declare-const X String)
; Buy Cheap handbags,Discount handbags,Cheap Leather handbags -Alltopgoods.com
(assert (str.in.re X (re.++ (str.to.re "Buy Cheap handbags,Discount handbags,Cheap Leather handbags -Alltopgoods") re.allchar (str.to.re "com\x0a"))))
(check-sat)
