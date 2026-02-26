(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= z (str.++ x "81" y)))

(assert (str.in_re y (re.union (str.to_re "94") (re.* (re.* (re.range "0" "9"))))))
(assert (str.in_re x (re.+ (re.union (re.* (re.* (str.to_re "302"))) (str.to_re "465")))))
(assert (str.in_re z (re.+ (re.union (re.range "1" "3") (re.union (re.* (re.range "4" "9")) (str.to_re "386"))))))

(assert (= (+ (* (- 2) (str.len x)) (* 6 (str.len y))) 74))
(assert (> (+ (* (- 7) (str.to_int x)) (* 6 (str.to_int y)) (* (- 4) (str.to_int z))) 22))

(check-sat)