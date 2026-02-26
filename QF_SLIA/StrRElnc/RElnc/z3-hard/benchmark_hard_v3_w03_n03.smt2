(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= x (str.++ z "42" "23" y)))

(assert (str.in_re z (re.union (re.* (str.to_re "23")) (re.union (re.* (str.to_re "54")) (str.to_re "329")))))
(assert (str.in_re x (re.* (re.union (re.range "0" "8") (str.to_re "3")))))
(assert (str.in_re y (re.+ (re.++ (re.range "6" "9") (str.to_re "54")))))

(assert (>= (+ (* (- 8) (str.len x)) (* 9 (str.len y)) (* (- 7) (str.len z))) 13))
(assert (> (+ (* 4 (str.len y)) (* (- 7) (str.len z)) (* (- 4) (str.to_int y)) (* (- 6) (str.to_int z))) 59))

(check-sat)