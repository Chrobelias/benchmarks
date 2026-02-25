(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re y (re.union (re.* (str.to_re "701")) (re.* (re.range "6" "8")))))
(assert (str.in_re x (re.+ (re.++ (re.* (re.range "5" "9")) (str.to_re "82")))))
(assert (str.in_re z (re.+ (re.++ (str.to_re "72") (str.to_re "891")))))
(assert (str.in_re a (re.union (re.union (str.to_re "580") (re.union (str.to_re "502") (re.+ (str.to_re "50")))) (str.to_re "828"))))

(assert (< (+ (* 4 (str.len x)) (* 8 (str.len y)) (* 4 (str.len z)) (* (- 6) (str.len a))) 81))
(assert (<= (+ (* (- 8) (str.to_int x)) (* 8 (str.to_int y)) (* (- 3) (str.to_int z)) (* 7 (str.to_int a))) 77))

(check-sat)