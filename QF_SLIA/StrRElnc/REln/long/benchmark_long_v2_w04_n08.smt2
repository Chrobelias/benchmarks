(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.+ (re.++ (str.to_re "0") (re.+ (str.to_re "55"))))))
(assert (str.in_re y (re.++ (str.to_re "43") (re.+ (str.to_re "618")))))

(assert (<= (+ (* (- 9) (str.len x)) (* 6 (str.len y))) 82))
(assert (> (+ (* (- 8) (str.to_int x)) (str.to_int y)) 55))
(assert (> (+ (* 8 (str.len x)) (* 3 (str.len y)) (* 8 (str.to_int y))) 28))

(check-sat)