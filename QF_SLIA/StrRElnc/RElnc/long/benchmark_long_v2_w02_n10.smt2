(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))

(assert (= x (str.++ y "36")))

(assert (str.in_re x (re.+ (str.to_re "936"))))
(assert (str.in_re y (re.* (re.union (str.to_re "9") (str.to_re "16")))))

(assert (<= (+ (* (- 3) (str.len x)) (* (- 3) (str.to_int y))) 11))

(check-sat)