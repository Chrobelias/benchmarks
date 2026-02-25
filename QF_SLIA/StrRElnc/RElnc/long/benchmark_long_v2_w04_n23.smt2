(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))

(assert (= y (str.++ "63" x)))

(assert (str.in_re x (re.++ (re.* (re.range "7" "9")) (re.+ (re.+ (str.to_re "357"))))))
(assert (str.in_re y (re.+ (re.union (re.range "0" "9") (str.to_re "18")))))

(assert (= (+ (* (- 5) (str.len x)) (* 9 (str.len y)) (* 9 (str.to_int x))) 76))
(assert (> (+ (* (- 8) (str.len x)) (* 3 (str.len y))) 73))
(assert (<= (+ (* 6 (str.to_int x)) (* (- 7) (str.to_int y))) 42))

(check-sat)