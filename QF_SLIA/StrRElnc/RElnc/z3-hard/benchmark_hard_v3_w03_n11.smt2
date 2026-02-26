(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= z (str.++ "97" x y)))

(assert (str.in_re z (re.++ (re.range "3" "9") (re.union (re.* (re.range "2" "9")) (str.to_re "581")))))
(assert (str.in_re y (re.+ (re.union (re.* (re.* (str.to_re "56"))) (str.to_re "76")))))
(assert (str.in_re x (re.+ (str.to_re "67"))))

(assert (= (+ (* (- 6) (str.to_int x)) (* (- 9) (str.to_int y)) (* 3 (str.to_int z))) 72))
(assert (> (+ (* 8 (str.len x)) (str.len y) (str.len z)) 31))
(assert (>= (+ (* (- 10) (str.to_int x)) (* 2 (str.to_int y)) (* 3 (str.to_int z))) 52))

(check-sat)