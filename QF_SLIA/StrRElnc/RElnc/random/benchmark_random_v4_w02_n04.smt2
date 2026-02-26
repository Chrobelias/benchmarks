(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= y (str.++ a "46" z x)))

(assert (str.in_re z (re.++ (str.to_re "42") (re.union (str.to_re "671") (re.+ (re.+ (str.to_re "4")))))))
(assert (str.in_re x (re.* (re.range "6" "9"))))
(assert (str.in_re a (re.union (re.* (re.+ (re.+ (re.range "4" "7")))) (str.to_re "36"))))
(assert (str.in_re y (re.* (re.union (re.* (str.to_re "73")) (re.range "2" "6")))))

(assert (>= (+ (* 6 (str.to_int x)) (* 6 (str.to_int y)) (- (str.to_int z)) (* (- 5) (str.to_int a))) 87))
(assert (> (+ (* 2 (str.len x)) (* 3 (str.len y)) (* 7 (str.len z)) (* 9 (str.len a))) 57))

(check-sat)