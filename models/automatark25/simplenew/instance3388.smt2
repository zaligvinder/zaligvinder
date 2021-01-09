(declare-const X String)
; www\x2Eyoogee\x2EcomserverHost\x3Aref\x3D\x25user\x5Fid
(assert (str.in.re X (str.to.re "www.yoogee.com\x13serverHost:ref=%user_id\x0a")))
(check-sat)
