(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ x z) (str.++ "77" y)))

(assert (str.in_re x (re.union (re.+ (str.to_re "644")) (re.union (re.range "0" "8") (str.to_re "75")))))
(assert (str.in_re z (re.union (re.* (str.to_re "7")) (re.* (str.to_re "36")))))
(assert (str.in_re y (re.union (re.range "3" "7") (re.union (re.range "3" "6") (re.* (str.to_re "75"))))))

(assert (> (+ (* (- 7) (str.len x)) (* 6 (str.len y)) (* 8 (str.len z))) 5))
(assert (<= (+ (* (- 10) (str.to_int x)) (* (- 3) (str.to_int y))) 76))

(check-sat)