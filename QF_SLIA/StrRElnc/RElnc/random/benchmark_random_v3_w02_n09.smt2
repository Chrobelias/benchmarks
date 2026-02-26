(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= x (str.++ z "81" y "52")))

(assert (str.in_re y (re.union (str.to_re "56") (re.* (re.++ (str.to_re "309") (re.* (str.to_re "58")))))))
(assert (str.in_re z (re.* (re.++ (str.to_re "44") (re.union (re.* (str.to_re "382")) (str.to_re "209"))))))
(assert (str.in_re x (re.+ (re.* (re.union (str.to_re "4") (re.range "0" "9"))))))

(assert (< (+ (* (- 8) (str.to_int x)) (* (- 4) (str.to_int y)) (str.to_int z)) 29))
(assert (< (+ (* 9 (str.len x)) (* (- 8) (str.len y)) (- (str.len z))) 74))

(check-sat)