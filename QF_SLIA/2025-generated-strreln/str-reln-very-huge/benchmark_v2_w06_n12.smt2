(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 100))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 100))

(assert (str.in_re x (re.union (re.+ (str.to_re "234")) (re.* (str.to_re "129")))))
(assert (str.in_re y (re.+ (re.++ (re.* (str.to_re "151")) (str.to_re "142")))))

(assert (> (+ (* 9 (str.len y)) (* (- 2) (str.to_int x)) (* (- 7) (str.to_int y))) 37))
(assert (> (+ (* 6 (str.len x)) (* (- 7) (str.len y))) 54))
(assert (> (+ (* (- 3) (str.to_int x)) (* 5 (str.to_int y))) 37))
(assert (> (+ (* 6 (str.len y)) (* 3 (str.to_int y))) 24))

(check-sat)