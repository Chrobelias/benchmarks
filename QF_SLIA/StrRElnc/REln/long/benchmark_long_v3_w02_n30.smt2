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

(assert (str.in_re z (re.* (re.++ (str.to_re "27") (re.++ (str.to_re "4") (str.to_re "65"))))))
(assert (str.in_re x (re.union (re.* (str.to_re "80")) (re.++ (str.to_re "32") (str.to_re "6")))))
(assert (str.in_re y (re.++ (re.union (re.range "7" "9") (str.to_re "20")) (re.* (str.to_re "458")))))

(assert (> (+ (* 9 (str.to_int y)) (str.to_int z)) 12))
(assert (> (+ (* (- 9) (str.len x)) (* 8 (str.len y)) (- (str.len z))) 54))

(check-sat)