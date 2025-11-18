(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.++ (str.to_re "213") (re.union (re.+ (str.to_re "63")) (str.to_re "83")))))
(assert (str.in_re y (re.* (re.union (re.++ (str.to_re "62") (str.to_re "42")) (str.to_re "157")))))
(assert (str.in_re z (re.union (str.to_re "9") (re.+ (str.to_re "469")))))
(assert (str.in_re a (re.* (re.++ (str.to_re "0") (str.to_re "52")))))

(assert (<= (+ (* (- 5) (str.len x)) (* 6 (str.len y)) (* (- 2) (str.len z)) (* (- 3) (str.len a))) 56))
(assert (= (+ (* (- 9) (str.len x)) (* (- 4) (str.len y)) (* 9 (str.len z)) (* (- 4) (str.len a))) 51))
(assert (>= (+ (* 5 (str.len z)) (* (- 4) (str.to_int a))) 82))
(assert (<= (+ (* (- 10) (str.len x)) (* 7 (str.len y)) (* (- 2) (str.len z)) (* 5 (str.len a))) 75))
(assert (< (+ (* 4 (str.len x)) (* (- 10) (str.len y)) (* (- 2) (str.len z)) (* (- 6) (str.len a))) 19))

(check-sat)