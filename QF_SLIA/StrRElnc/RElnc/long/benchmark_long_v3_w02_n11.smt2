(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))
(assert (>= (str.len z) 1000))

(assert (= (str.++ x "69" y) (str.++ z "56")))

(assert (str.in_re y (re.* (re.range "1" "9"))))
(assert (str.in_re z (re.* (re.+ (re.union (re.range "4" "9") (re.+ (str.to_re "67")))))))
(assert (str.in_re x (re.union (re.range "1" "5") (re.* (re.* (str.to_re "290"))))))

(assert (>= (+ (* 8 (str.len y)) (* (- 7) (str.to_int y))) 6))

(check-sat)