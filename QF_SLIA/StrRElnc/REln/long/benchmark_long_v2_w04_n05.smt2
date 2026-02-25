(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.++ (re.union (re.range "7" "9") (re.* (re.range "2" "8"))) (re.* (str.to_re "24")))))
(assert (str.in_re y (re.++ (str.to_re "56") (re.* (re.++ (str.to_re "556") (re.* (str.to_re "247")))))))

(assert (<= (+ (* 4 (str.len x)) (* (- 6) (str.len y))) 34))
(assert (> (+ (* 3 (str.to_int x)) (* (- 4) (str.to_int y))) 0))
(assert (= (+ (* 3 (str.len x)) (* (- 7) (str.len y))) 43))
(assert (> (+ (* 9 (str.to_int x)) (* (- 4) (str.to_int y))) 2))

(check-sat)