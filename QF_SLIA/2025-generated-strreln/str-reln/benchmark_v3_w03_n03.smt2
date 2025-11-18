(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.+ (re.++ (str.to_re "51") (re.+ (str.to_re "755"))))))
(assert (str.in_re y (re.* (re.* (re.union (re.+ (str.to_re "330")) (str.to_re "92"))))))
(assert (str.in_re z (re.union (re.+ (re.range "3" "5")) (str.to_re "816"))))

(assert (>= (+ (* (- 10) (str.len x)) (* 3 (str.len y)) (* 8 (str.len z))) 85))
(assert (= (+ (- (str.len x)) (* 4 (str.len y)) (* (- 10) (str.len z))) 87))
(assert (= (+ (* (- 8) (str.to_int x)) (* 3 (str.to_int y)) (* (- 10) (str.to_int z))) 73))

(check-sat)