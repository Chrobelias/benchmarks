(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re y (re.* (re.++ (str.to_re "764") (str.to_re "99")))))
(assert (str.in_re x (re.union (re.* (re.++ (str.to_re "9") (str.to_re "927"))) (str.to_re "59"))))

(assert (<= (+ (* 9 (str.len y)) (* 3 (str.to_int y))) 89))
(assert (> (+ (* (- 3) (str.to_int x)) (* 4 (str.to_int y))) 84))
(assert (>= (+ (str.to_int x) (* (- 2) (str.to_int y))) 72))

(check-sat)