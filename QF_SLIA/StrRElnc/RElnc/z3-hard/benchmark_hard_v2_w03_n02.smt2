(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ "44" y)))

(assert (str.in_re x (re.* (re.union (re.range "2" "4") (re.* (str.to_re "45"))))))
(assert (str.in_re y (re.union (re.range "5" "9") (re.* (str.to_re "254")))))

(assert (< (+ (* (- 8) (str.len x)) (* 8 (str.len y))) 90))
(assert (= (+ (* 7 (str.to_int x)) (* (- 9) (str.to_int y))) 43))
(assert (< (+ (* 2 (str.to_int x)) (str.to_int y)) 29))

(check-sat)