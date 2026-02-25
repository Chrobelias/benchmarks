(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))

(assert (str.in_re x (re.union (str.to_re "80") (re.+ (re.++ (str.to_re "26") (str.to_re "434"))))))
(assert (str.in_re y (re.union (str.to_re "52") (re.+ (str.to_re "300")))))

(assert (< (+ (* 6 (str.len x)) (* (- 10) (str.len y))) 36))
(assert (>= (+ (* 9 (str.to_int x)) (* (- 4) (str.to_int y))) 84))
(assert (= (* 10 (str.to_int x)) 83))
(assert (< (+ (* 3 (str.to_int x)) (* 2 (str.to_int y))) 65))

(check-sat)