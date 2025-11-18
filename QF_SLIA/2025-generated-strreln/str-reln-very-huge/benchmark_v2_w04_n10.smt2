(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 100))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 100))

(assert (str.in_re x (re.++ (str.to_re "90") (re.union (re.+ (str.to_re "5")) (str.to_re "16")))))
(assert (str.in_re y (re.+ (re.++ (re.* (re.range "3" "9")) (str.to_re "7")))))

(assert (= (+ (* 3 (str.len x)) (* (- 3) (str.len y))) 84))
(assert (> (+ (* 7 (str.to_int x)) (* 8 (str.to_int y))) 26))
(assert (< (+ (* 2 (str.to_int x)) (* (- 9) (str.to_int y))) 56))
(assert (> (+ (* (- 3) (str.to_int x)) (* 4 (str.to_int y))) 58))

(check-sat)