(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ "71" y)))

(assert (str.in_re x (re.union (re.++ (str.to_re "44") (str.to_re "402")) (re.+ (re.range "1" "9")))))
(assert (str.in_re y (re.+ (re.* (str.to_re "385")))))

(assert (= (+ (* 5 (str.to_int x)) (* (- 3) (str.to_int y))) 58))
(assert (< (+ (* 3 (str.to_int x)) (* (- 6) (str.to_int y))) 88))
(assert (<= (+ (* 3 (str.to_int x)) (* (- 4) (str.to_int y))) 35))
(assert (< (* (- 7) (str.len y)) 79))

(check-sat)