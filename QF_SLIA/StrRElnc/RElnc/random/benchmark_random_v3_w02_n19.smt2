(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= x (str.++ "56" z "55" y)))

(assert (str.in_re z (re.+ (re.union (re.union (str.to_re "85") (re.* (re.range "3" "7"))) (str.to_re "24")))))
(assert (str.in_re y (re.union (str.to_re "28") (re.union (str.to_re "730") (re.* (re.range "1" "3"))))))
(assert (str.in_re x (re.+ (re.union (re.range "5" "7") (re.union (str.to_re "31") (str.to_re "947"))))))

(assert (= (+ (* (- 6) (str.len x)) (* 5 (str.len y)) (- (str.len z))) 2))
(assert (> (+ (* 3 (str.to_int x)) (* (- 9) (str.to_int y)) (* 8 (str.to_int z))) 64))

(check-sat)