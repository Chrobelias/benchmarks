(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (str.to_re "861") (re.++ (str.to_re "455") (re.union (re.+ (str.to_re "3")) (str.to_re "83"))))))

(assert (<= (* (- 10) (str.to_int x)) 75))
(assert (<= (* 9 (str.to_int x)) 35))
(assert (<= (* (- 3) (str.len x)) 53))
(assert (<= (* (- 6) (str.len x)) 63))

(check-sat)