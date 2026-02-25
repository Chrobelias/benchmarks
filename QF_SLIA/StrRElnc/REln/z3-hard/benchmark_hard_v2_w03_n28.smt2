(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.* (re.union (re.++ (str.to_re "51") (str.to_re "36")) (str.to_re "19")))))
(assert (str.in_re y (re.++ (re.* (re.+ (str.to_re "2"))) (re.* (str.to_re "19")))))

(assert (< (+ (* 2 (str.to_int x)) (* 7 (str.to_int y))) 31))
(assert (> (+ (str.to_int x) (* (- 6) (str.to_int y))) 12))
(assert (>= (+ (* 3 (str.len x)) (str.len y)) 73))

(check-sat)