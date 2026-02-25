(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ "37" y)))

(assert (str.in_re y (re.++ (re.* (str.to_re "1")) (str.to_re "62"))))
(assert (str.in_re x (re.* (re.+ (re.union (re.range "1" "8") (str.to_re "75"))))))

(assert (>= (+ (* (- 5) (str.len x)) (* (- 10) (str.len y))) 67))
(assert (<= (+ (* 2 (str.to_int x)) (* (- 8) (str.to_int y))) 67))
(assert (< (+ (* 9 (str.len x)) (* 6 (str.len y))) 5))
(assert (= (+ (* 8 (str.to_int x)) (* 3 (str.to_int y))) 74))

(check-sat)