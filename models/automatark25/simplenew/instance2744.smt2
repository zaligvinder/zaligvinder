(declare-const X String)
; Buy Cheap handbags,Discount handbags,Cheap Leather handbags -Alltopgoods.com
(assert (str.in_re X (re.++ (str.to_re "Buy Cheap handbags,Discount handbags,Cheap Leather handbags -Alltopgoods") re.allchar (str.to_re "com\u{a}"))))
(check-sat)
