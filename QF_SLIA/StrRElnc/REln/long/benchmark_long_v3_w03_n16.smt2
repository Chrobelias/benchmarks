(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len y) 1000))

(assert (str.in_re x (re.+ (re.union (str.to_re "80") (re.++ (str.to_re "2") (re.+ (re.range "1" "4")))))))
(assert (str.in_re z (re.++ (re.+ (str.to_re "90")) (re.+ (str.to_re "82")))))
(assert (str.in_re y (re.union (re.+ (str.to_re "14")) (re.+ (re.+ (str.to_re "27"))))))

(assert (< (+ (* (- 2) (str.len y)) (- (str.to_int z))) 10))
(assert (= (+ (* 2 (str.to_int x)) (* 10 (str.to_int y)) (* (- 7) (str.to_int z))) 36))

(check-sat)