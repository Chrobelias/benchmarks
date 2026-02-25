(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))

(assert (= x (str.++ "83" y)))

(assert (str.in_re y (re.* (re.++ (str.to_re "3") (re.* (re.range "6" "9"))))))
(assert (str.in_re x (re.union (re.* (re.union (re.* (str.to_re "3")) (re.range "7" "9"))) (re.range "7" "9"))))

(assert (< (+ (* (- 4) (str.len x)) (* (- 3) (str.len y))) 21))
(assert (= (+ (* 5 (str.to_int x)) (* (- 9) (str.to_int y))) 20))

(check-sat)