(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len z) 1000))
(assert (>= (str.len y) 1000))

(assert (= x (str.++ z "33" y)))

(assert (str.in_re z (re.* (str.to_re "4"))))
(assert (str.in_re x (re.union (re.* (re.* (re.range "0" "6"))) (re.+ (str.to_re "57")))))
(assert (str.in_re y (re.++ (re.range "1" "6") (re.+ (re.range "1" "3")))))

(assert (<= (+ (* 3 (str.len x)) (* 3 (str.len y)) (* (- 6) (str.len z))) 100))
(assert (= (+ (* (- 4) (str.to_int x)) (* 2 (str.to_int y)) (* 8 (str.to_int z))) 25))

(check-sat)