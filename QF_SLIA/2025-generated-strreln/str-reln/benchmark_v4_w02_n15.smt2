(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.++ (re.+ (str.to_re "412")) (re.union (str.to_re "21") (str.to_re "91")))))
(assert (str.in_re y (re.++ (re.union (str.to_re "246") (re.* (str.to_re "97"))) (re.* (str.to_re "31")))))
(assert (str.in_re z (re.union (re.* (str.to_re "8")) (str.to_re "71"))))
(assert (str.in_re a (re.+ (re.++ (re.+ (str.to_re "75")) (re.+ (str.to_re "669"))))))

(assert (> (+ (* 5 (str.len x)) (* 4 (str.len y)) (- (str.len z)) (* (- 8) (str.len a))) 66))
(assert (< (+ (* 5 (str.to_int x)) (* 9 (str.to_int y)) (* 4 (str.to_int z)) (* 4 (str.to_int a))) 96))

(check-sat)