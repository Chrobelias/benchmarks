(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 100))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 100))

(assert (str.in_re x (re.* (re.union (re.+ (str.to_re "31")) (str.to_re "329")))))
(assert (str.in_re y (re.union (re.* (re.union (str.to_re "2") (re.range "2" "7"))) (re.range "7" "9"))))

(assert (= (+ (* (- 6) (str.len y)) (* 2 (str.to_int x))) 0))
(assert (> (+ (* 9 (str.len x)) (* 2 (str.len y))) 84))
(assert (< (+ (* 7 (str.len y)) (str.to_int y)) 94))
(assert (<= (+ (* (- 7) (str.len x)) (* 7 (str.len y))) 54))

(check-sat)