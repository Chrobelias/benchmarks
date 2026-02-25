(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.* (re.++ (str.to_re "512") (re.* (str.to_re "1"))))))
(assert (str.in_re x (re.* (re.* (re.+ (str.to_re "5"))))))

(assert (< (+ (* 2 (str.len x)) (* (- 2) (str.len y))) 3))
(assert (> (* 3 (str.to_int y)) 29))
(assert (< (+ (* (- 5) (str.to_int x)) (* (- 6) (str.to_int y))) 47))
(assert (= (+ (* 9 (str.to_int x)) (* (- 5) (str.to_int y))) 25))

(check-sat)