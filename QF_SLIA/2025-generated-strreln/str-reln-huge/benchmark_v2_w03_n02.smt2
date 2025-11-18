(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 10))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 10))

(assert (str.in_re x (re.++ (re.++ (str.to_re "84") (re.* (re.* (str.to_re "30")))) (str.to_re "8"))))
(assert (str.in_re y (re.union (re.++ (str.to_re "894") (re.+ (str.to_re "1"))) (str.to_re "63"))))

(assert (<= (+ (* (- 7) (str.len y)) (* 6 (str.to_int x))) 63))
(assert (= (+ (* 2 (str.to_int x)) (* 3 (str.to_int y))) 18))

(check-sat)