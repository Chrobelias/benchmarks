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

(assert (= x (str.++ "73" y "75" z)))

(assert (str.in_re x (re.++ (re.range "5" "7") (re.union (re.* (re.range "1" "9")) (re.range "0" "7")))))
(assert (str.in_re y (re.* (str.to_re "3"))))
(assert (str.in_re z (re.* (re.* (str.to_re "4")))))

(assert (< (+ (* 6 (str.len x)) (* (- 7) (str.len y)) (* 4 (str.len z))) 22))
(assert (< (+ (* (- 5) (str.to_int x)) (- (str.to_int y)) (* 8 (str.to_int z))) 13))
(assert (> (+ (* 10 (str.to_int x)) (* (- 2) (str.to_int y)) (* (- 2) (str.to_int z))) 63))

(check-sat)