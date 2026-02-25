(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.union (str.to_re "27") (re.* (re.* (re.* (str.to_re "35")))))))
(assert (str.in_re y (re.++ (re.range "7" "9") (re.union (str.to_re "180") (re.union (re.+ (str.to_re "600")) (str.to_re "250"))))))
(assert (str.in_re z (re.* (re.union (re.++ (re.range "0" "2") (re.range "2" "5")) (str.to_re "79")))))

(assert (>= (+ (* 3 (str.len x)) (* (- 7) (str.len y)) (str.len z)) 9))
(assert (= (+ (* (- 8) (str.to_int x)) (* 3 (str.to_int y)) (* (- 9) (str.to_int z))) 38))

(check-sat)