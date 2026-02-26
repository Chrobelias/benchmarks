(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len z) 1000))
(assert (>= (str.len x) 1000))

(assert (= (str.++ z x) (str.++ "66" y)))

(assert (str.in_re y (re.* (re.union (re.+ (re.* (str.to_re "3"))) (re.range "2" "9")))))
(assert (str.in_re x (re.union (str.to_re "35") (re.union (re.* (str.to_re "7")) (re.+ (str.to_re "26"))))))
(assert (str.in_re z (re.+ (re.+ (re.++ (re.* (re.range "4" "7")) (str.to_re "93"))))))

(assert (>= (+ (* (- 2) (str.len x)) (* (- 6) (str.len y)) (* 9 (str.len z))) 88))
(assert (< (+ (* 4 (str.to_int x)) (* (- 4) (str.to_int y))) 69))

(check-sat)