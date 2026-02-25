(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.++ (str.to_re "965") (re.++ (re.+ (str.to_re "65")) (re.* (str.to_re "253"))))))
(assert (str.in_re y (re.union (re.union (str.to_re "83") (re.* (re.range "6" "8"))) (re.+ (str.to_re "51")))))

(assert (< (+ (* (- 7) (str.to_int x)) (* 7 (str.to_int y))) 0))
(assert (= (+ (* (- 6) (str.len x)) (* (- 2) (str.len y))) 0))
(assert (= (+ (* (- 5) (str.len x)) (* (- 3) (str.len y))) 55))
(assert (>= (+ (* (- 8) (str.len x)) (* 9 (str.len y))) 17))

(check-sat)