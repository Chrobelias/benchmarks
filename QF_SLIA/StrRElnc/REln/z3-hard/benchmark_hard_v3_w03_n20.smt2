(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re y (re.union (str.to_re "438") (re.union (re.++ (str.to_re "50") (re.+ (str.to_re "977"))) (str.to_re "30")))))
(assert (str.in_re z (re.+ (re.+ (re.++ (re.range "5" "9") (re.+ (str.to_re "728")))))))
(assert (str.in_re x (re.++ (re.+ (re.+ (str.to_re "654"))) (str.to_re "12"))))

(assert (> (+ (* (- 6) (str.len x)) (str.len y) (* (- 9) (str.len z))) 30))
(assert (>= (+ (* (- 5) (str.len x)) (* 7 (str.len z)) (- (str.to_int x))) 78))

(check-sat)