(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))

(assert (= x (str.++ "94" y)))

(assert (str.in_re x (re.* (re.range "3" "9"))))
(assert (str.in_re y (re.* (re.++ (re.range "7" "9") (re.+ (str.to_re "7"))))))

(assert (> (+ (* (- 6) (str.len x)) (* (- 9) (str.len y))) 13))
(assert (<= (+ (* 10 (str.len x)) (* 8 (str.to_int x)) (* (- 8) (str.to_int y))) 33))
(assert (> (+ (* 3 (str.to_int x)) (* (- 9) (str.to_int y))) 1))

(check-sat)