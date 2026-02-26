(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= z (str.++ "44" "34" x y)))

(assert (str.in_re z (re.++ (re.union (str.to_re "9") (re.++ (re.* (re.range "1" "5")) (str.to_re "6"))) (re.range "0" "8"))))
(assert (str.in_re y (re.++ (re.* (re.++ (str.to_re "631") (str.to_re "784"))) (str.to_re "3"))))
(assert (str.in_re x (re.* (re.range "4" "7"))))

(assert (= (+ (* (- 9) (str.len x)) (* 4 (str.len y))) 55))
(assert (<= (+ (* 7 (str.len x)) (* (- 10) (str.len y)) (* (- 9) (str.len z))) 93))
(assert (< (+ (* (- 3) (str.to_int x)) (* (- 3) (str.to_int y)) (* 10 (str.to_int z))) 42))

(check-sat)