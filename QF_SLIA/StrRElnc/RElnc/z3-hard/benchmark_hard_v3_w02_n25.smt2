(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= y (str.++ z "79" x)))

(assert (str.in_re z (re.++ (re.+ (str.to_re "755")) (str.to_re "868"))))
(assert (str.in_re y (re.union (re.+ (re.+ (re.range "6" "9"))) (re.+ (re.range "1" "9")))))
(assert (str.in_re x (re.++ (re.+ (str.to_re "14")) (re.+ (re.* (str.to_re "0"))))))

(assert (>= (+ (* (- 5) (str.to_int x)) (* (- 7) (str.to_int y)) (* 7 (str.to_int z))) 92))
(assert (< (+ (* (- 4) (str.len x)) (* (- 3) (str.len y)) (* (- 7) (str.len z))) 5))

(check-sat)