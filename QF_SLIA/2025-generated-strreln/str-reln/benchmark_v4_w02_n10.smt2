(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.+ (str.to_re "81"))))
(assert (str.in_re y (re.+ (re.+ (re.++ (str.to_re "427") (str.to_re "4"))))))
(assert (str.in_re z (re.union (re.* (str.to_re "472")) (re.range "7" "9"))))
(assert (str.in_re a (re.+ (re.union (re.range "4" "8") (re.union (str.to_re "383") (re.+ (str.to_re "46")))))))

(assert (>= (+ (* (- 7) (str.len x)) (* (- 3) (str.len y)) (* (- 5) (str.len z)) (* 2 (str.len a))) 28))
(assert (< (+ (- (str.to_int x)) (str.to_int y) (* (- 5) (str.to_int z)) (* 7 (str.to_int a))) 57))

(check-sat)