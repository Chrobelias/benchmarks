(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 100))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 100))
(assert (>= (str.to_int z) 0))
(assert (>= (str.len z) 100))

(assert (str.in_re x (re.union (re.range "3" "6") (re.* (re.++ (str.to_re "93") (re.+ (str.to_re "526")))))))
(assert (str.in_re y (re.* (re.+ (str.to_re "11")))))
(assert (str.in_re z (re.union (re.range "0" "4") (re.union (re.range "4" "8") (re.* (re.* (re.range "2" "5")))))))

(assert (> (+ (* (- 6) (str.to_int x)) (* 6 (str.to_int y)) (* (- 2) (str.to_int z))) 63))
(assert (> (+ (- (str.len x)) (* (- 3) (str.len y)) (* 8 (str.len z))) 88))
(assert (<= (+ (* 6 (str.len x)) (- (str.to_int x))) 2))

(check-sat)