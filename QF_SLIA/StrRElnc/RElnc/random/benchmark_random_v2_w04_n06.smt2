(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ x "47")))

(assert (str.in_re y (re.union (re.union (str.to_re "0") (str.to_re "21")) (re.+ (re.range "1" "9")))))
(assert (str.in_re x (re.* (re.* (re.union (str.to_re "563") (str.to_re "959"))))))

(assert (> (+ (* (- 9) (str.len x)) (str.len y)) 94))
(assert (>= (+ (* (- 10) (str.to_int x)) (* 10 (str.to_int y))) 56))
(assert (<= (+ (* 6 (str.len x)) (* (- 6) (str.len y))) 100))
(assert (< (+ (* 8 (str.to_int x)) (* 6 (str.to_int y))) 39))

(check-sat)