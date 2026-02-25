(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.++ (str.to_re "784") (str.to_re "12")))))

(assert (<= (+ (* 10 (str.len x)) (* (- 10) (str.to_int x))) 44))
(assert (< (+ (* (- 2) (str.len x)) (str.to_int x)) 72))
(assert (<= (* (- 6) (str.len x)) 64))

(check-sat)