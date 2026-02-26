(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= z (str.++ x y "68" "53")))

(assert (str.in_re z (re.union (re.+ (re.union (re.range "4" "9") (re.range "1" "9"))) (str.to_re "986"))))
(assert (str.in_re y (re.* (re.* (re.range "1" "9")))))
(assert (str.in_re x (re.+ (re.++ (re.++ (str.to_re "3") (str.to_re "8")) (re.range "3" "5")))))

(assert (< (+ (* (- 2) (str.to_int x)) (* 3 (str.to_int y)) (* 10 (str.to_int z))) 30))
(assert (>= (+ (* (- 5) (str.len x)) (* 8 (str.len y)) (* 6 (str.len z))) 52))
(assert (< (+ (* (- 10) (str.to_int x)) (* 7 (str.to_int y)) (* (- 8) (str.to_int z))) 48))

(check-sat)