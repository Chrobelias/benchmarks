(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ y "37")))

(assert (str.in_re y (re.+ (re.range "3" "9"))))
(assert (str.in_re x (re.+ (re.++ (re.* (re.+ (str.to_re "63"))) (re.range "3" "7")))))

(assert (= (+ (- (str.len y)) (* 2 (str.to_int y))) 71))

(check-sat)