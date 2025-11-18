(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 100))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 100))

(assert (str.in_re x (re.* (re.++ (str.to_re "49") (re.++ (re.* (str.to_re "457")) (str.to_re "43"))))))
(assert (str.in_re y (re.* (str.to_re "593"))))

(assert (< (+ (str.to_int x) (* (- 4) (str.to_int y))) 51))
(assert (= (+ (* (- 10) (str.len x)) (* 3 (str.len y)) (* (- 8) (str.to_int x))) 90))
(assert (> (+ (* 4 (str.len x)) (* 4 (str.len y))) 13))

(check-sat)