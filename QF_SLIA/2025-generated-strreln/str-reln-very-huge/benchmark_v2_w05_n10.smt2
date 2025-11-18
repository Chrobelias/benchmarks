(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 100))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 100))

(assert (str.in_re x (re.* (re.union (re.* (re.range "0" "6")) (re.* (str.to_re "84"))))))
(assert (str.in_re y (re.+ (re.union (re.++ (str.to_re "7") (re.+ (str.to_re "745"))) (str.to_re "694")))))

(assert (> (+ (* 2 (str.len x)) (str.to_int x)) 77))
(assert (<= (+ (* (- 3) (str.to_int x)) (str.to_int y)) 1))
(assert (< (+ (* (- 8) (str.len y)) (* 10 (str.to_int x)) (* (- 3) (str.to_int y))) 46))

(check-sat)