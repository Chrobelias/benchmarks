(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 100))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 100))

(assert (str.in_re x (re.++ (re.union (re.range "0" "6") (re.+ (re.range "7" "9"))) (re.range "6" "9"))))
(assert (str.in_re y (re.union (re.union (re.+ (str.to_re "345")) (str.to_re "638")) (str.to_re "486"))))

(assert (< (+ (* (- 10) (str.len x)) (* (- 5) (str.len y))) 47))
(assert (< (+ (* 10 (str.to_int x)) (* (- 9) (str.to_int y))) 2))
(assert (>= (+ (* 2 (str.len x)) (* (- 3) (str.len y))) 48))
(assert (= (+ (* (- 10) (str.to_int x)) (* 9 (str.to_int y))) 21))
(assert (> (+ (* 5 (str.len x)) (* 7 (str.len y))) 62))

(check-sat)